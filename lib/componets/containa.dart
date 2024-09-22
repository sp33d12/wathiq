// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class contain extends StatelessWidget {
  final String title;
  final String subtitle;
  final double subsize, titlesize;
  final Function()? tap;
  const contain(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.titlesize,
      required this.subsize,
      this.tap});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: 350,
        height: 180,
        borderRadius: 20,
        blur: 20,
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        border: 2,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.1),
              Color(0xFFFFFFFF).withOpacity(0.05),
            ],
            stops: [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFffffff).withOpacity(0.5),
            Color((0xFFFFFFFF)).withOpacity(0.5),
          ],
        ),
        child: GestureDetector(
          onTap: tap,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Text(
                            textAlign: TextAlign.end,
                            title,
                            style: ArabicTextStyle(
                                color: Colors.white,
                                arabicFont: ArabicFont.aalooBhaijaan,
                                fontSize: titlesize),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 240,
                          height: 80,
                          child: Text(
                            textAlign: TextAlign.end,
                            subtitle,
                            style: ArabicTextStyle(
                                arabicFont: ArabicFont.elMessiri,
                                fontSize: subsize,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1, top: 20),
                    child: Container(
                      width: 80,
                      height: 150,
                      child: Image.asset(
                        'assets/image/passport.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
