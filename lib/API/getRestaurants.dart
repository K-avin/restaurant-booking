import 'dart:convert';
import 'package:book_tablez/Model/restaurantModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Constant/constants.dart';

Future<List<Restaurants>> getRestaurant() async {
  final response = await http
      .get(Uri.parse('http://10.0.2.2:8000/api/restaurants'), headers: {
    'Content-Type': 'application/json; charset=UTF-8',
  });

  if (response.statusCode == 200) {
    List responseData = jsonDecode(response.body);
    print(responseData);
    return responseData.map((data) => new Restaurants.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
