// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:wathiq/componets/Colors.dart';
import 'package:wathiq/componets/button.dart';
import 'package:wathiq/componets/inputastext.dart';
import 'package:wathiq/screens/homepage/home_page.dart';
import 'package:wathiq/screens/tryAnderror/newhomepage.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whitebackground,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.login,
                size: 110,
                color: AppColors.bluebutton,
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'إنشاء حساب جديد',
                            style: ArabicTextStyle(
                                color: AppColors.bluebutton,
                                arabicFont: ArabicFont.iBMPlexSansArabic,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65,
                    ),
                    inputtext(
                      hideText: 'الاسم ',
                      obscureText: false,
                      Icons: Icons.person,
                      horizontal: 30,
                      iconColor: AppColors.icon,
                      boarderColor: AppColors.blueOutLineButton,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    inputtext(
                      hideText: 'رقم الهاتف',
                      obscureText: false,
                      Icons: Icons.lock,
                      horizontal: 30,
                      iconColor: AppColors.icon,
                      boarderColor: AppColors.blueOutLineButton,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    inputtext(
                      hideText: 'كلمة المرور',
                      obscureText: true,
                      Icons: Icons.lock,
                      horizontal: 30,
                      iconColor: AppColors.icon,
                      boarderColor: AppColors.blueOutLineButton,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    MyButtons(
                      textsize: 23,
                      vertical: 15,
                      horizontal: 90,
                      color: AppColors.blueicon,
                      text: 'هلا بك',
                      ontap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Newhomepage()));
                      },
                      TextColor: AppColors.buttontext,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
