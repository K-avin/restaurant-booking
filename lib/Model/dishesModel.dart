import 'package:flutter/material.dart';

class Dishes {
  final int id;
  final String name;
  final String restaurant;
  final String category;
  final String price;

  Dishes({
    required this.id,
    required this.name,
    required this.restaurant,
    required this.category,
    required this.price,
  });

  factory Dishes.fromJson(Map<String, dynamic> json) {
    return Dishes(
      id: json['id'],
      name: json['name'],
      restaurant: json['restaurant'],
      category: json['category'],
      price: json['price'],
    );
  }
}
