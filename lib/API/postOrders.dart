import 'dart:convert';

import 'package:book_tablez/Model/ordersModel.dart';
import 'package:book_tablez/Model/userModel.dart';
import 'package:book_tablez/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Orders> placeOrder(int? restaurant_id, int? table_id, int? dish_id,
    int? total, context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return int
  int? customer_id = prefs.getInt('user_id');
  final response = await http.post(
    Uri.parse('http://10.0.2.2:8000/api/placeorder'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, int?>{
      'customer_id': customer_id,
      'restaurant_id': restaurant_id,
      'table_id': table_id,
      'dish_id': dish_id,
      'total': total,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // var res = jsonDecode(response.body);
    // print(res);

    var responseData = jsonDecode(response.body);
    print(responseData);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );

    return Orders.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
