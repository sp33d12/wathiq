// ignore_for_file: unnecessary_import, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, file_names, sized_box_for_whitespace, curly_braces_in_flow_control_structures, unused_import

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:wathiq/componets/button.dart';
import 'package:wathiq/componets/colors.dart';
import 'package:wathiq/screens/passport/NextNationalPage.dart';

class MyPassport extends StatelessWidget {
  const MyPassport({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.bluebutton),
        centerTitle: true,
        title: Text(
          'الجواز الإلكتروني',
          style: ArabicTextStyle(
              fontSize: 20,
              arabicFont: ArabicFont.tajawal,
              color: AppColors.bluetext),
        ),
        backgroundColor: AppColors.whitebackground,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              _buildHeader(),
              SizedBox(height: 20),
              _buildStepList(context),
              SizedBox(height: 20),
              _buildNextButton(context),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildHeader() {
    return GlassmorphicContainer(
      width: 350,
      height: 200,
      borderRadius: 20,
      blur: 10,
      alignment: Alignment.center,
      linearGradient: LinearGradient(
        colors: [
          Colors.blue.withOpacity(0.2),
          Colors.blue.withOpacity(0.7),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      border: 1,
      borderGradient: LinearGradient(
        colors: [
          Colors.blue.withOpacity(0.5),
          Colors.blue.withOpacity(0.2),
        ],
      ),
      child: Center(
        child: Text(
          "الجواز الإلكتروني",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildStepList(BuildContext context) {
    List<Map<String, dynamic>> steps = [
      {
        'title': 'معلومات عامة',
        'content': [
          '1- برنامج الحجز الالكتروني مجاني بالكامل و متاح لجميع المواطنين.',
          '2- يتم دفع الرسوم الخاصة باصدار الجواز الالكتروني بطريقة الكترونية بالكامل باستخدام بطاقات الدفع (Master-Visa) او اي بطاقة دفع نافذة.',
          '3- الرجاء التأكد من جميع المعلومات المدخلة قبل تثبيت الحجز.',
          '4- الاستثناء من الحجز يقدم عند مراجعة الدائرة وتكون كلفة الاستثناء (100,000) دينار عراقي للعائلة الواحدة.',
          '5- توفر مديرية شؤون الجوازات بطاقات الدفع الالكتروني للمواطنين الذين لا يحملون بطاقات دفع الكترونية و دون اي كلف اضافية.',
          '6- الحضور بتاريخ و وقت الحجز المحدد.',
          '7- الرجاء اظهار الرمز التشفيري (QR-BarCode) عند دخول الاستعلامات.',
          '8- الانتباه على الرمز (OTP) المرسل الى رقم الهاتف لتثبيت الحجز.',
          '9- في حال عبور موعد الحجز بالامكان المراجعة بعد موعد الحجز على ان لا تتجاوز المدة (5) ايام مع دفع غرامة مالية (5000) دينار.',
          '10- الوقت المثالى لمراجعة الدائرة هو قبل وقت الحجز بنصف ساعة.',
          '11- بالامكان مراجعة اي مكتب جوازات ضمن المحافظة.',
          '12- المستمسكات المطلوبه للحصول على جواز السفر الالكتروني البطاقه الموحده مع بطاقه السكن.',
        ],
      },
    ];

    return SingleChildScrollView(
      child: GlassmorphicContainer(
        width: 350,
        height: 820,
        borderRadius: 20,
        blur: 10,
        alignment: Alignment.center,
        linearGradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.2),
            Colors.blue.withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: 1,
        borderGradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.5),
            Colors.blue.withOpacity(0.2),
          ],
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: steps.map((step) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        step['title'],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: AppColors.blacktext,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          step['content'].length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              step['content'][index],
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.blacktext),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MyButtons(
        color: AppColors.bluebutton,
        text: 'التالي',
        horizontal: 90,
        vertical: 16,
        TextColor: Colors.white,
        textsize: 16,
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Nextpassportpage()),
          );
        },
      ),
    );
  }
}
