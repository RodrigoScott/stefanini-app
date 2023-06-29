import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stefanini_app/services/data.dart';
import 'package:stefanini_app/src/models/app_model.dart';

class UserService {
  List<AppModel>? appList;
  List<AppModel> appListFiltered = [];

  Future<List<AppModel>?> getAppList(
      String searchWord, String? category) async {
    try {
      appList = (jsonDecode(dummyData) as List)
          .map((an) => AppModel.fromJson(an))
          .toList();
    } catch (err) {
      debugPrint(err.toString());
    }
    if (searchWord.isNotEmpty) {
      appList!.forEach((element) {
        if (element.name.toLowerCase().contains(searchWord.toLowerCase())) {
          appListFiltered.add(element);
        }
      });
      return appListFiltered;
    }
    if (category != null && category.isNotEmpty) {
      appList!.forEach((element) {
        if (element.category.contains(category)) {
          appListFiltered.add(element);
        }
      });
      return appListFiltered;
    }
    return appList;
  }
}
