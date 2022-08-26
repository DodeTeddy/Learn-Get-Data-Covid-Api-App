import 'package:faskes/models/lab_model.dart';
import 'package:faskes/providers/lab_provider.dart';
import 'package:faskes/theme/theme.dart';
import 'package:faskes/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LabPage extends StatefulWidget {
  const LabPage({ Key? key }) : super(key: key);

  @override
  State<LabPage> createState() => _LabPage();
}

class _LabPage extends State<LabPage> {

  @override
  void initState() {
    super.initState();
    final data = Provider.of<LabProvider>(context, listen: false);
    data.getLab();
  }

  @override
  Widget build(BuildContext context) {

    final data = Provider.of<LabProvider>(context);

    Widget headerLab(){
      return AppBar(
        title: Text(
          'Lab Page',
          style: style.copyWith(
            fontSize: 20,
            fontWeight: semiBold
          ),
        ),
        backgroundColor: purple,
      );
    }

    Widget listLab(){
      return Expanded(
          child: FutureBuilder<List<LabModel>>(
            future: data.getLab(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView(
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  children: snapshot.data!.map((lab) {
                    return CardItem(
                      nama: lab.namaLab.toString(), 
                      telepon: lab.kontakPhone.toString(), 
                      alamat: lab.alamat.toString(), 
                      wilayah: lab.provinsi.toString()
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
          headerLab(),
          listLab()
        ],
      ),
    );
  }
}