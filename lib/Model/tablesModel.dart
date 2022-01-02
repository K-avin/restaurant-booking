import 'package:flutter/material.dart';

class Tables {
  final int id;
  final int chairs;
  final String type;
  final int status;

  Tables({
    required this.id,
    required this.chairs,
    required this.type,
    required this.status,
  });
  factory Tables.fromJson(Map<String, dynamic> json) {
    return Tables(
      id: json['id'],
      type: json['type'],
      chairs: json['chairs'],
      status: json['status'],
    );
  }
}




// var restTables = [
//   Tables(id: 1, chairs: "2", type: "medium", status: 1),
//   Tables(id: 1, chairs: "2", type: "medium", status: 1),
//   Tables(id: 1, chairs: "2", type: "medium", status: 1),
//   Tables(id: 1, chairs: "2", type: "medium", status: 1),
//   Tables(id: 1, chairs: "2", type: "medium", status: 1),
//   Tables(id: 1, chairs: "2", type: "medium", status: 1),
// ];
