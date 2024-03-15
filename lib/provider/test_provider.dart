import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dg_master/model/test.dart';
import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier {
  // ID, Pokemon
  Test? _test = null;
  Test? get test => _test;

  void setTest() async {
    _test = await fetchTest();
    notifyListeners();
  }

  Future<Test> fetchTest() async {
    final res = await http.get(Uri.parse(
        'https://0733cbb1-b839-4f2b-8e1a-b9da5f657f21.mock.pstmn.io/Player'));
    if (res.statusCode == 200) {
      print(jsonDecode(res.body));
      return Test.fromJson(jsonDecode(res.body));
    } else {
      throw Exception('Failed to Load Pokemon');
    }
  }
}
