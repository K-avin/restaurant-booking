import 'package:flutter/material.dart';

class Orders {
  final int id;
  final String customer_id;
  final String restaurant_id;
  final String table_id;
  final int status;
  final String date;

  Orders({
    required this.id,
    required this.customer_id,
    required this.restaurant_id,
    required this.table_id,
    required this.status,
    required this.date,
  });

  factory Orders.fromJson(Map<String, dynamic> json) {
    return Orders(
      id: json['id'],
      customer_id: json['customer_id'],
      restaurant_id: json['restaurant_id'],
      table_id: json['table_id'],
      status: json['status'],
      date: json['created_at'],
    );
  }
}






// var ordersAll = [
//   Orders(id: 1, customer_id: 222, restaurant_id: 4, table_id: 2, status: 1),
// ];
