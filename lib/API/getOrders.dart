import 'dart:convert';

import 'package:book_tablez/Model/ordersModel.dart';
import 'package:book_tablez/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Orders> getOrders() async {
  final response = await http.get(
    Uri.parse('http://10.0.2.2:8000/api/orders/1'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // var res = jsonDecode(response.body);
    // print(res);

    var responseData = jsonDecode(response.body)['order'];
    print(responseData);

    return Orders.fromJson(responseData);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
