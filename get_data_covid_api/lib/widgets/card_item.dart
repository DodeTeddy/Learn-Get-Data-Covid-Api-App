import 'package:faskes/theme/theme.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String nama;
  final String ranjang;
  final String telepon;
  final String alamat;
  final String wilayah;

  const CardItem({ 
    Key? key,
    required this.nama,
    this.ranjang = '',
    required this.telepon,
    required this.alamat,
    required this.wilayah, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 10,
          )
        ]
      ),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                'Nama  :  '
                ),
                Expanded(
                  child: Text(
                  nama
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                'Ranjang  :  '
                ),
                Expanded(
                  child: Text(
                  ranjang
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                'Telepon  :  '
                ),
                Expanded(
                  child: Text(
                  telepon
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                'Alamat  :  '
                ),
                Expanded(
                  child: Text(
                  alamat
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                'Wilayah  :  '
                ),
                Expanded(
                  child: Text(
                  wilayah
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}