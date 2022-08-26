import 'package:faskes/providers/kasus_harian_provider.dart';
import 'package:faskes/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

class KasusHarianPage extends StatefulWidget {
  const KasusHarianPage({ Key? key }) : super(key: key);

  @override
  State<KasusHarianPage> createState() => _KasusHarianPageState();
}

class _KasusHarianPageState extends State<KasusHarianPage> {

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    final data = Provider.of<KasusHarianProvider>(context, listen: false);
    data.getDataKasus();
  }

  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String date = DateFormat.yMMMMEEEEd('id').format(now);
    final data = Provider.of<KasusHarianProvider>(context);

    return Scaffold(
      body: data.isLoading 
      ? const Center(
        child: CircularProgressIndicator(),
      ) 
      : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Data Harian Covid',
                style: style.copyWith(
                  fontSize: 35,
                  fontWeight: bold,
                  color: orange
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: style.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: purple
                    )
                  ),
                  Text(
                    'Positif : ${data.dataKasus!.update!.penambahan!.jumlahPositif} orang',
                    style: style.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: purple
                    )
                  ),
                  Text(
                    'Sembuh : ${data.dataKasus!.update!.penambahan!.jumlahSembuh} orang',
                    style: style.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: purple
                    )
                  ),
                  Text(
                    'Meninggal : ${data.dataKasus!.update!.penambahan!.jumlahMeninggal} orang',
                    style: style.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: purple
                    )
                  )
                ],
              ),
            ],
          ),
        )
      );
    } 
  }