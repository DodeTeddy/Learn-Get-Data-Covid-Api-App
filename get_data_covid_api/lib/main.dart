import 'package:faskes/pages/home_page.dart';
import 'package:faskes/pages/kasus_harian_page.dart';
import 'package:faskes/pages/lab_page.dart';
import 'package:faskes/pages/pemeriksaan_page.dart';
import 'package:faskes/pages/rs_rujukan_page.dart';
import 'package:faskes/pages/splash_screen.dart';
import 'package:faskes/providers/kasus_harian_provider.dart';
import 'package:faskes/providers/lab_provider.dart';
import 'package:faskes/providers/pemeriksaan_provider.dart';
import 'package:faskes/providers/rs_rujukan_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<KasusHarianProvider>(create: (context) => KasusHarianProvider()),
        ChangeNotifierProvider<PemeriksaanProvider>(create: (context) => PemeriksaanProvider()),
        ChangeNotifierProvider<LabProvider>(create: (context) => LabProvider()),
        ChangeNotifierProvider<RsRujukanProvider>(create: (context) => RsRujukanProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => const SplashScreen(),
          '/home' : (context) => const HomePage(),
          '/kasus-page' : (context) => const KasusHarianPage(),
          '/pemeriksaan-page' : (context) => const PemeriksaanPage(),
          '/lab-page' : (context) => const LabPage(),
          '/rsrujukan-page' : (context) => const RsRUjukanPage()
        },
      ),
    );
  }
}