import 'dart:convert';
import 'dart:developer';

import 'package:faskes/models/rs_rujukan_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class RsRujukanProvider with ChangeNotifier{
  Future<List<RsRujukanModel>> getRsRujukan() async {
    try {
      var response = await http.get(Uri.parse('https://data.covid19.go.id/public/api/rs.json'));

      log(response.statusCode.toString());
      log(response.body);

      if (response.statusCode == 200) {
        List<RsRujukanModel> rsRujukan = [];
        List parsedJson = jsonDecode(response.body);

        parsedJson.forEach((rs) {
          rsRujukan.add(RsRujukanModel.fromJson(rs));
        });
        return rsRujukan;
      } else{
        return [];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}