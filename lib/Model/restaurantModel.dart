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
}

var restaurantsAll = [
  Restaurants(id: 1, name: "The French Laundry", location: "London"),
  Restaurants(id: 1, name: "The French Laundry", location: "London"),
  Restaurants(id: 1, name: "The French Laundry", location: "London"),
];
