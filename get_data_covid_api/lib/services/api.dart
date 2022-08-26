import 'dart:convert';
import 'dart:developer';

import 'package:faskes/models/kasus_harian_model.dart';
import 'package:faskes/models/pemeriksaan_model.dart';
import 'package:http/http.dart' as http;

Future<KasusHarianModel?> getDataKasusHarian() async {
  KasusHarianModel? dataKasus;

  try {
    final response = await http.get(Uri.parse('https://data.covid19.go.id/public/api/update.json'));
    log(response.statusCode.toString());
    log(response.body);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      dataKasus = KasusHarianModel.fromJson(data);
    }else{
      log('error');
    }
  } catch (e) {
    log(e.toString());
  }
  return dataKasus;
}

Future<PemeriksaanModel?> getDataPemeriksaan() async {
  PemeriksaanModel? dataPemeriksaan;

  try {
    final response = await http.get(Uri.parse('https://data.covid19.go.id/public/api/pemeriksaan-vaksinasi.json'));
    log(response.statusCode.toString());
    log(response.body);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      dataPemeriksaan = PemeriksaanModel.fromJson(data);
    }else{
      log('error');
    }
  } catch (e) {
    log(e.toString());
  }
  return dataPemeriksaan;
}