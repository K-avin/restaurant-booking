import 'package:flutter/material.dart';

class Tables {
  final int id;
  final String chairs;
  final String type;
  final int status;

  Tables({
    required this.id,
    required this.chairs,
    required this.type,
    required this.status,
  });
}

var restTables = [
  Tables(id: 1, chairs: "2", type: "medium", status: 1),
  Tables(id: 1, chairs: "2", type: "medium", status: 1),
  Tables(id: 1, chairs: "2", type: "medium", status: 1),
  Tables(id: 1, chairs: "2", type: "medium", status: 1),
  Tables(id: 1, chairs: "2", type: "medium", status: 1),
  Tables(id: 1, chairs: "2", type: "medium", status: 1),
];
