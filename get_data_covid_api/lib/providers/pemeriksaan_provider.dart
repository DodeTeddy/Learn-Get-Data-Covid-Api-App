import 'package:faskes/models/pemeriksaan_model.dart';
import 'package:faskes/services/api.dart';
import 'package:flutter/material.dart';

class PemeriksaanProvider with ChangeNotifier{
  PemeriksaanModel? dataPemeriksaan;
  bool isLoading = false;

  getDataLab() async {
    isLoading = true;
    dataPemeriksaan = await getDataPemeriksaan();
    isLoading = false;
    notifyListeners();
  }
}