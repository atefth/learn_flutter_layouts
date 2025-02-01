import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;

  const ReusableRow({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(label)),
        Expanded(
            child: TextField(
                readOnly: true,
                controller: controller,
                decoration: InputDecoration(hintText: hintText))),
      ],
    );
  }
}
