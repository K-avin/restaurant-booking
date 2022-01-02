import 'package:flutter/material.dart';

class Restaurants {
  final int id;
  final String name;
  final String location;

  Restaurants({
    required this.id,
    required this.name,
    required this.location,
  });

  factory Restaurants.fromJson(Map<String, dynamic> json) {
    return Restaurants(
      id: json['id'],
      name: json['name'],
      location: json['location'],
    );
  }
}
