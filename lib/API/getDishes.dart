import 'dart:convert';
import 'package:book_tablez/Model/categoryModel.dart';
import 'package:book_tablez/Model/restaurantModel.dart';
import 'package:book_tablez/Model/tablesModel.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import '../Constant/constants.dart';

Future<List<Category>> getCategory() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:8000/api/dishes'), headers: {
    'Content-Type': 'application/json; charset=UTF-8',
  });

  if (response.statusCode == 200) {
    List responseData = jsonDecode(response.body);
    print(responseData);
    return responseData.map((data) => new Category.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
