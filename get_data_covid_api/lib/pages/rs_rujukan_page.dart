import 'package:faskes/models/rs_rujukan_model.dart';
import 'package:faskes/providers/rs_rujukan_provider.dart';
import 'package:faskes/theme/theme.dart';
import 'package:faskes/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RsRUjukanPage extends StatefulWidget {
  const RsRUjukanPage({ Key? key }) : super(key: key);

  @override
  State<RsRUjukanPage> createState() => _RsRUjukanPageState();
}

class _RsRUjukanPageState extends State<RsRUjukanPage> {

  @override
  void initState() {
    super.initState();
    final data = Provider.of<RsRujukanProvider>(context, listen: false);
    data.getRsRujukan();
  }

  @override
  Widget build(BuildContext context) {

    final data = Provider.of<RsRujukanProvider>(context);

    Widget headerRsRujukan(){
      return AppBar(
        title: Text(
          'Rs Rujukan Page',
          style: style.copyWith(
            fontSize: 20,
            fontWeight: semiBold
          ),
        ),
        backgroundColor: purple,
      );
    }

    Widget listRsRujukan(){
      return Expanded(
          child: FutureBuilder<List<RsRujukanModel>>(
            future: data.getRsRujukan(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView(
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  children: snapshot.data!.map((rs) {
                    return CardItem(
                      nama: rs.nama.toString(), 
                      ranjang: rs.tempatTidur.toString(), 
                      telepon: rs.telepon.toString(), 
                      alamat: rs.alamat.toString(), 
                      wilayah: rs.wilayah.toString()
                    );
                  }).toList()
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          ),
        );
    }

    return Scaffold(
      body: Column(
        children: [
          headerRsRujukan(),
          listRsRujukan()
        ],
      ),
    );
  }
}