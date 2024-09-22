// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wathiq/componets/Colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bluebutton,
        title: Text(
          'البحث',
          style: GoogleFonts.cairo(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'أدخل ما تبحث عنه',
                labelStyle: GoogleFonts.cairo(color: Colors.grey),
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search, color: AppColors.bluebutton),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Search logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.bluebutton,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              child: Text(
                'بحث',
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
