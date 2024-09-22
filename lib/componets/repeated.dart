// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

class TextRepeated extends StatelessWidget {
  const TextRepeated({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 335,
      child: Text(
        textDirection: TextDirection.rtl,
        text,
        style: ArabicTextStyle(
            arabicFont: ArabicFont.dubai,
            fontSize: 12,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
