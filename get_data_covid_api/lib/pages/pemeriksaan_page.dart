import 'package:faskes/providers/pemeriksaan_provider.dart';
import 'package:faskes/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PemeriksaanPage extends StatefulWidget {
  const PemeriksaanPage({ Key? key }) : super(key: key);

  @override
  State<PemeriksaanPage> createState() => _PemeriksaanPageState();
}

class _PemeriksaanPageState extends State<PemeriksaanPage> {

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    final data = Provider.of<PemeriksaanProvider>(context, listen: false);
    data.getDataLab();
  }

  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String date = DateFormat.yMMMMEEEEd('id').format(now);
    final data = Provider.of<PemeriksaanProvider>(context);

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
                'Pemeriksaan Covid',
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
                    'Antigen : ${data.dataPemeriksaan!.pemeriksaan!.penambahan!.jumlahOrangAntigen} orang',
                    style: style.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: purple
                    )
                  ),
                  Text(
                    'Pcr : ${data.dataPemeriksaan!.pemeriksaan!.penambahan!.jumlahOrangPcrTcm} orang',
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