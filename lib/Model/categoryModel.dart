import 'package:flutter/material.dart';

class Category {
  final String title;
  final String id;

  Category({
    required this.title,
    required this.id,
  });
}

var dishCategorys = [
  Category(
    title: "Briyani",
    id: "1",
  ),
  Category(
    title: "Pasta bake",
    id: "2",
  ),
  Category(
    title: "Fruit salad",
    id: "3",
  ),
  Category(
    title: "Soup",
    id: "4",
  ),
  Category(
    title: "Roast",
    id: "5",
  ),
  Category(
    title: "Antipasti",
    id: "6",
  ),
];
