import 'package:faskes/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String route;
  final String name;
  const HomeItem({ 
    Key? key,
    required this.route,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration : const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png')
                      )
                    )
                  ),
                  Text(
                    name,
                    style: style.copyWith(
                      fontWeight: medium,
                      color: orange
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}