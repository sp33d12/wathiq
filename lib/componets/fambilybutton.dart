// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

const List<String> family = ['نعم', 'لا'];

class familybutton extends StatefulWidget {
  final ValueChanged<String> onfamilySelected;

  const familybutton({super.key, required this.onfamilySelected});

  @override
  State<familybutton> createState() => _DropbuttonState();
}

class _DropbuttonState extends State<familybutton> {
  String selectedCity = family.first;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // Set text direction to RTL
      child: SizedBox(
        width: 330, // Adjust width as needed
        height: 60,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue.shade400,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          value: selectedCity,
          onChanged: (String? newCity) {
            setState(() {
              selectedCity = newCity!;
              widget.onfamilySelected(selectedCity); // Notify parent
            });
          },
          items: family.map<DropdownMenuItem<String>>((String city) {
            return DropdownMenuItem<String>(
              value: city,
              child: Align(
                alignment:
                    Alignment.centerRight, // Align item content to the right
                child: Text(
                  city,
                  textAlign: TextAlign.right, // Align text to the right
                  style: const ArabicTextStyle(
                      arabicFont: ArabicFont.aalooBhaijaan,
                      color: Colors.black),
                ),
              ),
            );
          }).toList(),
          isExpanded: true,
          menuMaxHeight: 150,
          borderRadius: BorderRadius.circular(20),
          icon: const Icon(Icons.arrow_drop_down), // Icon for dropdown
          iconSize: 24,

          padding: const EdgeInsets.only(left: 25, right: 10),
          style: const ArabicTextStyle(
              arabicFont: ArabicFont.aalooBhaijaan, color: Colors.black),
        ),
      ),
    );
  }
}
