import 'package:faskes/theme/theme.dart';
import 'package:faskes/widgets/home_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget textHeader(){
      return SafeArea(
        child: Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.all(20),
          child: Text(
            'Hello, \nWelcome',
            style: style.copyWith(
              fontSize: 24,
              fontWeight: bold,
              color: purple
            ),
          ),
        )
      );
    }

    Widget homeMenu(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HomeItem(
                route: '/kasus-page', 
                name: 'Kasus Covid'
              ),
              HomeItem(
                route: '/pemeriksaan-page', 
                name: 'Pemeriksaan'
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HomeItem(
                route: '/lab-page', 
                name: 'Lab'
              ),
              HomeItem(
                route: '/rsrujukan-page', 
                name: 'Rs Rujukan'
              )
            ],
          ),
        ],
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          textHeader(),
          homeMenu()
        ],
      ),
    );
  }
}