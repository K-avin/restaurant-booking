import 'package:flutter/material.dart';

class User {
  final int id;
  final String username;
  final String email;
  final int mobile;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.mobile,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user_id'],
      username: json['name'],
      email: json['email'],
      mobile: json['mobile'],
    );
  }
}



// var thisUser = [
//   User(
//     id: 1,
//     username: 222,
//     email: 2,
//     mobile: 4,
//   ),
// ];
