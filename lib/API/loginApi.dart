import 'dart:convert';

import 'package:book_tablez/Model/userModel.dart';
import 'package:book_tablez/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<User> loginApi(String name, String password, context) async {
  final response = await http.post(
    Uri.parse('http://10.0.2.2:8000/api/auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': name,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // var res = jsonDecode(response.body);
    // print(res);

    var responseData = jsonDecode(response.body)['user_id'];
    // print(responseData);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('user_id', responseData);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );

    return User.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
