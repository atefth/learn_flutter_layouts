import 'package:flutter/material.dart';
import 'package:learn_layout/resuable.row.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<Map<String, String>> rows = [
    {'label': 'Name', 'hintText': 'Enter your name'},
    {'label': 'Email', 'hintText': 'Enter your email'},
    {'label': 'Phone', 'hintText': 'Enter your phone'},
  ];
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: rows.map((row) {
                  return ReusableRow(
                    label: row['label'] ?? '',
                    hintText: row['hintText'] ?? '',
                    controller: TextEditingController(),
                  );
                }).toList(),
              )),
        ),
      ),
    );
  }
}
