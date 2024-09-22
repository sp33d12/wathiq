// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, camel_case_types

import 'package:arabic_font/arabic_font.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wathiq/componets/Colors.dart';
import 'package:wathiq/componets/button.dart';
import 'package:wathiq/componets/inputastext.dart';
import 'package:wathiq/firebase_options.dart';
import 'package:wathiq/screens/homepage/home_page.dart';
import 'package:wathiq/screens/tryAnderror/newhomepage.dart';
import 'package:wathiq/screens/tryAnderror/newhomepage1.dart';
import 'package:wathiq/screens/sign.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginPage extends StatelessWidget {
  final phoneNumbercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  LoginPage({super.key});

  void singUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: phoneNumbercontroller.text, password: passwordcontroller.text);
  }

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
                      Icons.lock,
                      size: 110,
                      color: AppColors.bluebutton,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'تسجيل الدخول',
                                  style: ArabicTextStyle(
                                      color: AppColors.bluebutton,
                                      arabicFont: ArabicFont.iBMPlexSansArabic,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          inputtext(
                            hideText: 'رقم الهاتف',
                            obscureText: false,
                            Icons: Icons.phone,
                            horizontal: 30,
                            boarderColor: AppColors.blueOutLineButton,
                            iconColor: AppColors.icon,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          inputtext(
                            hideText: 'كلمة المرور',
                            obscureText: true,
                            Icons: Icons.lock,
                            horizontal: 30,
                            boarderColor: AppColors.blueOutLineButton,
                            iconColor: AppColors.icon,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.only(right: 40),
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF).withOpacity(0.02),
                              ),
                              child: Text(
                                'نسيت كلمة المرور؟',
                                style: ArabicTextStyle(
                                    color: AppColors.bluetext,
                                    arabicFont: ArabicFont.tajawal,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          MyButtons(
                            textsize: 20,
                            vertical: 15,
                            horizontal: 90,
                            TextColor: AppColors.whitetext,
                            color: AppColors.bluebutton,
                            text: 'تذكرتك',
                            ontap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Newhomepage()));
                            },
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF).withOpacity(0.02),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  SignPage()));
                                    },
                                    child: Text(
                                      'سجل الان',
                                      style: ArabicTextStyle(
                                          arabicFont: ArabicFont.tajawal,
                                          color: AppColors.bluetext,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    ' لا تملك حساب؟',
                                    style: ArabicTextStyle(
                                        arabicFont: ArabicFont.tajawal,
                                        color: AppColors.blacktext,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
