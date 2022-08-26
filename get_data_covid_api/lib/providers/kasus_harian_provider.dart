import 'package:faskes/models/kasus_harian_model.dart';
import 'package:faskes/services/api.dart';
import 'package:flutter/cupertino.dart';

class KasusHarianProvider with ChangeNotifier{
  KasusHarianModel? dataKasus;
  bool isLoading = false;

  getDataKasus() async {
    isLoading = true;
    dataKasus = await getDataKasusHarian();
    isLoading = false;
    notifyListeners();
  }
}