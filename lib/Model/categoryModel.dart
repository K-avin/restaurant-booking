import 'package:flutter/material.dart';

class Category {
  final int id;
  final String title;

  Category({
    required this.id,
    required this.title,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['name'],
    );
  }
}

// var dishCategorys = [
//   Category(
//     title: "Briyani",
//     id: "1",
//   ),
//   Category(
//     title: "Pasta bake",
//     id: "2",
//   ),
//   Category(
//     title: "Fruit salad",
//     id: "3",
//   ),
//   Category(
//     title: "Soup",
//     id: "4",
//   ),
//   Category(
//     title: "Roast",
//     id: "5",
//   ),
//   Category(
//     title: "Antipasti",
//     id: "6",
//   ),
// ];
