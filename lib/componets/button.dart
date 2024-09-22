// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final VoidCallback ontap;
  final Color color, TextColor;
  final String text;
  final double horizontal, vertical, textsize;

  const MyButtons({
    super.key,
    required this.color,
    required this.text,
    required this.horizontal,
    required this.TextColor,
    required this.vertical,
    required this.textsize,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          // Circular border with 20 radius
          borderRadius: BorderRadius.circular(10),
        ),
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      ),
      child: Text(
        text,
        style: TextStyle(color: TextColor, fontSize: textsize),
      ),
    );
  }
}
