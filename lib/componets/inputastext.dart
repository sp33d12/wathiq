// ignore_for_file: file_names, prefer_typing_uninitialized_variables, camel_case_types, prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';

class inputtext extends StatelessWidget {
  final controller;
  final String hideText;
  final IconData? Icons;
  final bool obscureText;
  final double horizontal;
  final Color boarderColor, iconColor;

  const inputtext(
      {super.key,
      this.controller,
      required this.hideText,
      required this.obscureText,
      required this.Icons,
      required this.horizontal,
      required this.boarderColor,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: TextField(
        cursorColor: Colors.blue,
        textAlign: TextAlign.end,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons,
              color: iconColor,
            ),
            suffixIconColor: Colors.grey.shade400,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: boarderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: hideText,
            hintStyle: TextStyle(color: Colors.grey.shade400)),
      ),
    );
  }
}
