// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wathiq/componets/Colors.dart';
import 'package:wathiq/screens/home_pageScreen/DriverLicense.dart';
import 'package:wathiq/screens/home_pageScreen/FoodCard.dart';

import 'package:wathiq/screens/home_pageScreen/ResidenceCard.dart';
import 'package:wathiq/screens/nationalcard.dart/UnifiedNationalCard.dart';
import 'package:wathiq/screens/home_pageScreen/VoterCard.dart';
import 'package:wathiq/screens/passport/passport.dart';

class Newhomepagei extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Newhomepagei({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppColors.greybackground,
          actions: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  UniconsLine.apps,
                  color: AppColors.obicon,
                  size: 30,
                ),
              ),
            )
          ],
          leadingWidth: 70,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/image/me.jpg',
                ),
              ),
            ),
          ),
        ),
        endDrawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.7,
          backgroundColor: Color(0xFF228B22), // Light Gray
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF228B22), // Forest Green
                      Color(0xFFB6FF5C), // Lime Green
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'وثق',
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              buildDrawerItem(Icons.home, 'الرئيسية', () {}),
              buildDrawerItem(Icons.person, 'الحساب', () {}),
              buildDrawerItem(Icons.settings, 'الاعدادات', () {}),
              buildDrawerItem(Icons.exit_to_app, 'تسجيل الخروج', () {}),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: AppColors.greybackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              )),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 25),
            children: [
              buildCardItem(
                context,
                'البطاقة الوطنية الموحدة',
                'يرجى تقديم الطلب وإرفاق الوثائق للحصول على البطاقة الوطنية الموحدة',
                MyNationalCard(),
                'assets/image/passport.png', // Example image path
              ),
              SizedBox(
                width: 10,
              ),
              buildCardItem(
                context,
                'الجواز الالكتروني العراقي',
                'يرجى تقديم الطلب وإرفاق الوثائق للحصول على جواز السفر العراقي',
                MyPassport(),
                'assets/image/c1.png',
              ),
              SizedBox(
                width: 10,
              ),
              buildCardItem(
                context,
                'رخصة القيادة',
                'يرجى تقديم الطلب وإرفاق الوثائق للحصول على رخصة القيادة',
                MyDriverLicens(),
                'assets/image/c1.png',
              ),
              SizedBox(
                width: 10,
              ),
              buildCardItem(
                context,
                'بطاقة السكن',
                'يرجى تقديم الطلب وإرفاق الوثائق للحصول على بطاقة السكن',
                MyResidenceCard(),
                'assets/image/c1.png',
              ),
              SizedBox(
                width: 10,
              ),
              buildCardItem(
                context,
                'بطاقة التموينية',
                'يرجى تقديم الطلب وإرفاق الوثائق للحصول على بطاقة التموينية',
                MyFoodCard(),
                'assets/image/c1.png',
              ),
              SizedBox(
                width: 10,
              ),
              buildCardItem(
                context,
                'بطاقة الناخب',
                'يرجى تقديم الطلب وإرفاق الوثائق للحصول على بطاقة الناخب',
                MyVoterCard(),
                'assets/image/c1.png',
              ),
              SizedBox(
                width: 10,
              ),
              
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blackbackground,
              borderRadius: BorderRadius.circular(20), // Radius of 20
              boxShadow: [
                BoxShadow(
                  color: AppColors.greybackground,
                  spreadRadius: 20,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Shadow position
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GNav(
                backgroundColor: Colors.transparent,
                color: Colors.white,
                tabBorder: Border.all(style: BorderStyle.solid),
                activeColor: Colors.black,
                tabBackgroundColor: AppColors.greybackground,
                gap: 10,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'الرئيسية',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'البحث',
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: 'الاعدادات',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCardItem(BuildContext context, String title, String subtitle,
      Widget routeWidget, String imagePath) {
    return Card(
      color: AppColors.whitebackground,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      )),
      margin: EdgeInsets.symmetric(vertical: 14),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => routeWidget),
          );
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                width: 350,
                height: 430,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.fill,
                    ),
                    color: AppColors.greybackground,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          title,
                          style: GoogleFonts.cairo(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blacktext),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: SizedBox(
                          width: 290,
                          height: 50,
                          child: Text(
                            subtitle,
                            style: GoogleFonts.cairo(
                                fontSize: 14, color: Colors.grey.shade600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildDrawerItem(IconData icon, String title, Function onTap) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Color(0xFF228B22)), // Forest Green
      title: Text(
        title,
        style: GoogleFonts.cairo(
            fontSize: 20, color: Color(0xFF333333)), // Charcoal Gray
      ),
      onTap: () => onTap(),
    );
  }
}
