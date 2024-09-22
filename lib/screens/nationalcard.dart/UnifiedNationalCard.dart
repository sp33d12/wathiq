// ignore_for_file: unnecessary_import, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, file_names, sized_box_for_whitespace, curly_braces_in_flow_control_structures

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:wathiq/componets/Colors.dart';
import 'package:wathiq/componets/button.dart';

import 'package:wathiq/screens/nationalcard.dart/nextNationalPage.dart';

class MyNationalCard extends StatefulWidget {
  const MyNationalCard({super.key});

  @override
  _MyNationalCardState createState() => _MyNationalCardState();
}

class _MyNationalCardState extends State<MyNationalCard> {
  int _currentStep = 0;

  // Define different content for each step
  List<Widget> steps = [
    Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170.0),
          child: Text(
            ':اوقات الحجز',
            style: ArabicTextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                arabicFont: ArabicFont.changa),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextRepeated(
            text:
                '1- دوائر (محافظة كركوك) من الساعة 8 صباحاً الى الساعة 9 صباحاً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '2- دوائر (الرصافة شارع المغرب + الرصافة ساحة عنتر + التاجي) من الساعة 9 صباحاً الى الساعة 10 صباحاً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '3- دوائر (الكرخ صباحي + الكرخ مسائي + اليوسفية + الوحدة) من الساعة 10 صباحاً الى الساعة 11 صباحاً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '4- دوائر (الكاظمية صباحي + الكاظمية مسائي + الطارمية + المحمودية) من الساعة 11 صباحاً الى الساعة 12 صباحاً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '5- دوائر (الرشيد + المنصور + اللطيفية + الاعظمية) من الساعة 12 مساءً الى الساعة 1 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '6- دوائر (الكرادة الشرقية + ابي غريب + المدائن + بغداد الجديدة) من الساعة 1 مساءً الى الساعة 2 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '7- دوائر (مدينة الصدر صباحي + مدينة الصدر مسائي + النصر والسلام) من الساعة 2 مساءً الى الساعة 3 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '8- دوائر (محافظة البصرة) من الساعة 3 مساءً الى الساعة 4 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '9- دوائر (محافظة ذي قار) من الساعة 4 مساءً الى الساعة 5 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '10- دوائر (محافظة الانبار) من الساعة 5 مساءً الى الساعة 6 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '11- دوائر (محافظة واسط + محافظة ميسان) من الساعة 6 مساءً الى الساعة 7 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '12- دوائر (محافظة الديوانية + محافظة بابل) من الساعة 7 مساءً الى الساعة 8 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '13- دوائر (محافظة كربلاء + محافظة النجف) من الساعة 8 مساءً الى الساعة 9 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '14- دوائر (محافظة ديالى + محافظة المثنى) من الساعة 9 مساءً الى الساعة 10 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '15- دوائر (محافظة اربيل + التاجي) من الساعة 10 مساءً الى الساعة 11 مساءً.'),
        SizedBox(
          height: 10,
        ),
        TextRepeated(
            text:
                '16- دوائر ((الرصافة شارع المغرب + الرصافة ساحة عنتر+ مدينة الصدر صباحي + مدينة الصدر مسائي)) من الساعة 11 مساءً الى الساعة 12 مساءً.'),
        SizedBox(
          height: 10,
        ),
      ],
    ),
    Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200.0),
          child: Text(
            ':تنويه',
            style: ArabicTextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                arabicFont: ArabicFont.changa),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextRepeated(
            text:
                '1-الحجز الإلكتروني مخصص للتسجيل لأول مرة والواقعات الحياتية.'),
        SizedBox(
          height: 14,
        ),
        Text(
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.end,
          '2- تواريخ الحجز تكون غير متاحة خلال العطل الرسمية.',
          style: ArabicTextStyle(
            arabicFont: ArabicFont.changa,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '3- الواقعات الحياتية المقصود بها (بيان ولادة أو الزواج أو الطلاق أو تغيير لقب أو اسم أو بدل ضائع أو بدل تالف... إلخ).'),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '4- التسجيل أول مرة يقصد به إصدار البطاقة الوطنية بدلا عن هوية الأحوال المدنية.'),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '5- الحجز يجب أن يكون للاسم الثلاثي ورقم الهاتف الصحيح وسوف يتم إلغاء الحجز في حال المخالفة.'),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '6- منح السماحية للمواطنين بتمديد فترة مراجعتهم للدوائر لمدة خمسة ايام فقط ابتداءً من تاريخ الحجز الالكتروني '),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '7- مليء جميع الحقول وبشكل دقيق والتأكد من صحة المعلومات وعدم إهمال أي حقل.'),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text: '8- أوقات الحجز من الساعة 8 صباحا إلى الساعة 12 مساء'),
      ],
    ),
    Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: SizedBox(
            width: 250,
            height: 50,
            child: Text(
              textAlign: TextAlign.end,
              ':تعليمات الحجز الألكتروني',
              style: ArabicTextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  arabicFont: ArabicFont.changa),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: TextRepeated(
              text:
                  '1- الحجز الإلكتروني مجاني ومتاح للجميع ودون أي رسوم مالية.'),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          width: 330,
          height: 40,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '2- اختيار موعد المراجعة من خلال التواريخ المتاحة للحجز فقط التي تظهر في البرنامج مع ملاحظة الأيام التي يتوفر فيها الحجز.',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        TextRepeated(
            text:
                '3- إدخال رقم الهاتف الصحيح وعدم استخدامه لأكثر من مرة في الحجز كون عملية الحجز مخصصة لمرة واحدة فقط كل 10 ايام لفسح المجال لغيرك من المواطنين. '),
        SizedBox(
          height: 14,
        ),
        Container(
          width: 330,
          height: 40,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '4- كتابة رقم الهاتف يكون باللغة الإنكليزية.',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '5- للاستعلام عن الحجز الرجاء أضغط على زر (الحجوزات السابقة)'),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '6- شمول هوية الأحوال المدنية (التالفة أو الضائعة) بنظام الحجز الإلكتروني بأستثناء المواطنين من سكنة خارج محافظة نفوسهم.'),
        SizedBox(
          height: 14,
        ),
        TextRepeated(
            text:
                '7- في حالة امتلاء الدائرة حاول في اليوم التالي وعدم تسجيل الخروج لتلافي طلب رسالة رمز الدخول على رقم هاتفك مرة اخرى .'),
        SizedBox(
          height: 16,
        ),
      ],
    ),
    Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 70.0,
          ),
          child: SizedBox(
            width: 250,
            height: 60,
            child: Text(
              textAlign: TextAlign.end,
              ':الحالات المستثناة من الحجز الإلكتروني',
              style: ArabicTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  arabicFont: ArabicFont.changa),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          width: 330,
          height: 30,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '1- المحطات المحمولة.',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          width: 330,
          height: 40,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '2- من لديه بطاقة سكن محافظة خارج المحافظة المسجل بها قيده.',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          width: 330,
          height: 40,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '3- الوافدين من خارج العراق خلال (30) يوما من تأشيرة دخولهم.',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          width: 330,
          height: 30,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '4- عوائل الشهداء والحالات الانسانية',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          width: 330,
          height: 30,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            '5- نقل قيد الزوج',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.changa,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  ];

  // Function to go to the next step
  void _nextStep() {
    setState(() {
      if (_currentStep < steps.length - 1) {
        _currentStep++; // Go to the next step
      } else {
        // Navigate to the next page when on the last step
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => NextNationalpage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.bluebutton),
          centerTitle: true,
          title: Text(
            'البطاقة الموحدة',
            style: ArabicTextStyle(
                fontSize: 20,
                arabicFont: ArabicFont.tajawal,
                color: AppColors.bluetext),
          ),
        ),
        backgroundColor: AppColors.whitebackground,
        body: Center(
          child: GlassmorphicContainer(
            width: 350,
            height: 720,
            borderRadius: 20,
            blur: 20,
            alignment: Alignment.topCenter,
            border: 2,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.withOpacity(0.2),
                  Colors.blue.withOpacity(0.7),
                ],
                stops: [
                  0.1,
                  1,
                ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue.withOpacity(0.5),
                Colors.blue.withOpacity(0.2),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  steps[_currentStep],
                  SizedBox(height: 20),
                  MyButtons(
                    textsize: 15,
                    ontap: _nextStep,
                    color: AppColors.bluebutton,
                    text: 'التالي',
                    vertical: 15,
                    horizontal: 90,
                    TextColor: Colors.white,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Custom TextRepeated widget
class TextRepeated extends StatelessWidget {
  final String text;
  const TextRepeated({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        textDirection: TextDirection.rtl,
        text,
        textAlign: TextAlign.right,
        style: ArabicTextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          arabicFont: ArabicFont.changa,
        ),
      ),
    );
  }
}
