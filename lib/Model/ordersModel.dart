import 'package:flutter/material.dart';

class Orders {
  final int id;
  final int customer_id;
  final int dishe_id;
  final int restaurant_id;
  final int table_id;
  final int status;

  Orders({
    required this.id,
    required this.customer_id,
    required this.dishe_id,
    required this.restaurant_id,
    required this.table_id,
    required this.status,
  });
}

var ordersAll = [
  Orders(
      id: 1,
      customer_id: 222,
      dishe_id: 2,
      restaurant_id: 4,
      table_id: 2,
      status: 1),
];
