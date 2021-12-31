import 'package:flutter/material.dart';

class User {
  final int id;
  final int username;
  final int email;
  final int mobile;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.mobile,
  });
}

var thisUser = [
  User(
    id: 1,
    username: 222,
    email: 2,
    mobile: 4,
  ),
];
