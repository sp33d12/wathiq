// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wathiq/componets/Colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bluebutton,
        title: Text(
          'الاعدادات',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/image/me.png'), // User profile image
              ),
            ),
            SizedBox(height: 20),
            Text(
              'الاسم: محمد علي',
              style:
                  GoogleFonts.cairo(fontSize: 20, color: AppColors.blacktext),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.person, color: AppColors.bluebutton),
              title: Text(
                'إعدادات الحساب',
                style:
                    GoogleFonts.cairo(fontSize: 18, color: AppColors.blacktext),
              ),
              onTap: () {
                // Navigate to Account Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: AppColors.bluebutton),
              title: Text(
                'الإشعارات',
                style:
                    GoogleFonts.cairo(fontSize: 18, color: AppColors.blacktext),
              ),
              onTap: () {
                // Navigate to Notification Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.lock, color: AppColors.bluebutton),
              title: Text(
                'الخصوصية والأمان',
                style:
                    GoogleFonts.cairo(fontSize: 18, color: AppColors.blacktext),
              ),
              onTap: () {
                // Navigate to Privacy Settings
              },
            ),
          ],
        ),
      ),
    );
  }
}
