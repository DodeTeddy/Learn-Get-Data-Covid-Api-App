import 'dart:convert';
import 'dart:developer';

import 'package:faskes/models/lab_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LabProvider with ChangeNotifier{
  Future<List<LabModel>> getLab() async {
    try {
      var response = await http.get(Uri.parse('https://data.covid19.go.id/public/api/lab.json'));

      log(response.statusCode.toString());
      log(response.body);

      if (response.statusCode == 200) {
        List<LabModel> labor = [];
        List parsedJson = jsonDecode(response.body);

        parsedJson.forEach((lab) {
          labor.add(LabModel.fromJson(lab));
        });
        return labor;
      } else{
        return [];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}