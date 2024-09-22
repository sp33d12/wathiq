// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, file_names, unused_element

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:arabic_font/arabic_font.dart';
import 'package:intl/intl.dart';
import 'package:wathiq/componets/colors.dart';

import 'package:wathiq/componets/inputastext.dart';

class NextNationalpage extends StatefulWidget {
  const NextNationalpage({super.key});

  @override
  State<NextNationalpage> createState() => _NextpassportpageState();
}

class _NextpassportpageState extends State<NextNationalpage> {
  String selectedCity = cities.first;
  String? selectedPart = '';
  DateTime bookingDate = DateTime.now();
  final firstnameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final grandNameController = TextEditingController();
  final titleNameController = TextEditingController();
  final nationalNumController = TextEditingController();
  final phoneNumController = TextEditingController();

  final PageController _pageController = PageController();
  int _currentStep = 0;
  int? selectedIndex; // To track the selected index
  // Function to format time with Arabic AM/PM
  String formatTimeWithArabicAMPM(DateTime date) {
    String formattedTime =
        DateFormat.jm().format(date); // Get time in AM/PM format
    // Replace AM with ص and PM with م
    formattedTime = formattedTime.replaceAll('AM', 'ص').replaceAll('PM', 'م');
    return formattedTime;
  }

  String getDayInArabic(DateTime date) {
    List<String> arabicDays = [
      'الأحد', // Sunday
      'الاثنين', // Monday
      'الثلاثاء', // Tuesday
      'الأربعاء', // Wednesday
      'الخميس', // Thursday
      'الجمعة', // Friday
      'السبت' // Saturday
    ];
    return arabicDays[date.weekday % 7];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.whitebackground,
          iconTheme: IconThemeData(color: AppColors.blueicon),
          title: Text(
            'إجراءات الحجز',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.aalooBhaijaan,
              fontSize: 22,
              color: AppColors.bluetext,
            ),
          ),
        ),
        backgroundColor: AppColors.whitebackground,
        body: Stack(
          children: [
            _buildBackground(),
            PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                buildGlassContainer(_buildReviewCenterStep(), 'التالي'),
                buildGlassContainer(_buildGeneralInfoStep(), 'التالي'),
                buildGlassContainer(_buildAppointmentDateStep(), 'التالي'),
                buildGlassContainer(_buildConfirmAppointmentStep(), 'تأكيد'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(color: AppColors.whitebackground),
    );
  }

  Widget buildGlassContainer(Widget content, String buttonText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blue.withOpacity(0.7)),
          color: Colors.blue.shade100),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 12.0),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.6),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.blue.withOpacity(0.5)),
            ),
            child: Column(
              children: [
                Expanded(child: SingleChildScrollView(child: content)),
                ElevatedButton(
                  onPressed: () {
                    if (_currentStep < 3) {
                      setState(() {
                        _currentStep++;
                        _pageController.animateToPage(
                          _currentStep,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      });
                    }
                  },
                  child: Text(
                    buttonText,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 41, 156, 213),
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReviewCenterStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        SizedBox(height: 40),
        _buildLabel('المحافظة'),
        SizedBox(height: 15),
        _buildDropButton(),
        SizedBox(height: 40),
        _buildLabel('مكتب الاصدار'),
        SizedBox(height: 20),
        _buildSubButton(),
      ],
    );
  }

  Widget _buildGeneralInfoStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            'معلومات عامة',
            style: ArabicTextStyle(
              arabicFont: ArabicFont.tajawal,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(height: 30),
        _buildInputRow('الاسم الاول', firstnameController),
        _buildInputRow('اسم الاب', fatherNameController),
        _buildInputRow('اسم الجد', grandNameController),
        _buildInputRow('اللقب (اختياري)', titleNameController),
        _buildInputRow('الرقم الوطني', nationalNumController),
        _buildInputRow('رقم الهاتف', phoneNumController),
      ],
    );
  }

  Widget _buildAppointmentDateStep() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Center(
        child: Text(
          'موعد المراجعة',
          style: ArabicTextStyle(
            color: Colors.white,
            arabicFont: ArabicFont.tajawal,
            fontSize: 25,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'عطله',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text('محجوز', style: TextStyle(color: Colors.white)),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text('متاح', style: TextStyle(color: Colors.white)),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(selectedPart!, style: TextStyle(color: Colors.white)),
          SizedBox(
            width: 5,
          ),
          Text(
            'الحجوزات المتاحه لمكتب',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'تاريخ الحجز',
            textAlign: TextAlign.end,
            style: ArabicTextStyle(
                color: Colors.white,
                fontSize: 20,
                arabicFont: ArabicFont.tajawal),
          ),
          SizedBox(width: 5)
        ],
      ),
      SizedBox(height: 10),
      Center(
        child: Container(
          width: 320,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150, // Increased width to fit both date and day
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      '${bookingDate.month}/${bookingDate.day} - ${getDayInArabic(bookingDate)}', // Current day
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150, // Increased width to fit both date and day
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      '${bookingDate.add(Duration(days: 1)).month}/${bookingDate.add(Duration(days: 1)).day} - ${getDayInArabic(bookingDate.add(Duration(days: 1)))}', // Next day
                      style: TextStyle(color: Colors.white),
                    ), // Date in M/d format with Arabic day next to it
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150, // Increased width to fit both date and day
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      '${bookingDate.add(Duration(days: 2)).month}/${bookingDate.add(Duration(days: 2)).day} - ${getDayInArabic(bookingDate.add(Duration(days: 2)))}', // The day after next
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'وقت الحجز',
            textAlign: TextAlign.end,
            style: ArabicTextStyle(
                color: Colors.white,
                fontSize: 20,
                arabicFont: ArabicFont.tajawal),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Container(
          width: 310,
          height: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0), // Padding inside the container
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 260,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 3 items in a row
                        crossAxisSpacing: 5, // space between columns
                        mainAxisSpacing: 5, // space between rows
                        childAspectRatio:
                            2.0, // Adjusts the height-to-width ratio
                      ),
                      itemCount: 13, // 8 AM to 8 PM (13 slots)
                      itemBuilder: (context, index) {
                        final bookingTime = DateTime(
                          bookingDate.year,
                          bookingDate.month,
                          bookingDate.day,
                          8 + index, // Time from 8 AM to 8 PM
                        );

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  index; // Update selected index on tap
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selectedIndex == index
                                  ? Colors.blue // Blue color when selected
                                  : Colors.green, // Default color
                            ),
                            child: Center(
                              child: Text(
                                formatTimeWithArabicAMPM(
                                    bookingTime), // Arabic time format
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildRow(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              label,
              style: ArabicTextStyle(
                  arabicFont: ArabicFont.mirza,
                  fontSize: 22,
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(width: 40),
          ],
        ),
        SizedBox(height: 5),
        inputtext(
          hideText: '',
          Icons: null,
          obscureText: false,
          controller: controller,
          horizontal: 30,
          boarderColor: Colors.white,
          iconColor: Colors.black,
        ),
      ],
    );
  }

  Widget _buildConfirmAppointmentStep() {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'تأكيد موعد الحجز',
          style: ArabicTextStyle(
            arabicFont: ArabicFont.tajawal,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 120),
        Text(
          'رمز التحقق',
          style: ArabicTextStyle(
            arabicFont: ArabicFont.tajawal,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10),
        _buildVerificationField(),
      ],
    );
  }

  Widget _buildLabel(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: ArabicTextStyle(
            arabicFont: ArabicFont.tajawal,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF37474F),
          ),
        ),
        SizedBox(width: 12),
      ],
    );
  }

  Widget _buildDropButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: DropdownButtonFormField<String>(
            menuMaxHeight: 150,
            value: cities.contains(selectedCity)
                ? selectedCity
                : null, // Check if the selectedCity is in the list
            onChanged: (String? newValue) {
              setState(() {
                selectedCity = newValue!;
                selectedPart = null;
              });
            },
            items: cities
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        value,
                        textAlign:
                            TextAlign.right, // Align text within the widget
                      ),
                    ),
                  );
                })
                .toSet()
                .toList(), // Convert to Set to ensure unique values
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.green.shade700,
                  width: 2.0,
                ),
              ),
            ),
            style: TextStyle(
              color: Colors.black,
            ),
            dropdownColor: Colors.white,
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }

  Widget _buildSubButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: DropdownButtonFormField<String>(
            menuMaxHeight: 150,
            value: selectedPart != null &&
                    cityParts[selectedCity]?.contains(selectedPart) == true
                ? selectedPart
                : null, // Check if the selectedPart is valid
            onChanged: (String? newValue) {
              setState(() {
                selectedPart = newValue;
              });
            },
            items: cityParts[selectedCity]!.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.green.shade700,
                  width: 2.0,
                ),
              ),
            ),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }

  Widget _buildInputRow(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.right,
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _statusIndicator('مكتب الاصدار', _currentStep >= 1),
        _statusIndicator('المعلومات العامة', _currentStep >= 2),
        _statusIndicator('موعد المراجعة', _currentStep >= 3),
        _statusIndicator('تأكيد الحجز', _currentStep == 4),
      ],
    );
  }

  Widget _statusIndicator(String label, bool isActive) {
    return Column(
      children: [
        Icon(
          isActive ? Icons.check_circle : Icons.circle,
          color: isActive ? Colors.green : Colors.grey,
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.green : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildBookingTime() {
    return Container(); // Implement your booking time logic here
  }

  Widget _buildVerificationField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'أدخل رمز التحقق',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: TextStyle(color: Colors.black),
    );
  }
}

// Map of cities and their parts
const Map<String, List<String>> cityParts = {
  'بغداد': [
    'المنصور',
    'الاعظمية',
    'الرصافة - زيونة',
    'الصليخ',
    'الكاظمية',
    'الكرادة',
    'الكرخ -العلاوي',
    'المحمودية'
  ],
  'الموصل': ['الجانب الأيسر', 'الجانب الأيمن', 'القدس', 'العربي'],
  'البصرة': [
    'البصرة - جبيلة',
    'الزبير',
    'القرنة',
  ],
  'أربيل': ['اربيل الثاني', 'اربيل المركزي', 'سوران', 'كويه'],
  'السليمانية': ['السليمانية الاول ', 'جمجمال', 'حلبجه', 'كلار'],
  'دهوك': [
    'دهوك ',
    'زاخو',
    'عقرة',
  ],
  'كركوك': ['تسعين', 'حي الشورجة', 'بنجة علي', 'حي الواسطي'],
  'الأنبار': [
    'الرمادي',
    'الفلوجة',
  ],
  'بابل': [
    'الحلة',
    'القاسم',
  ],
  'الديوانية': ['الديوانية'],
  'ذي قار': ['سوق الشيوخ', 'الرفاعي', 'الناصرية'],
  'ديالى': ['ديالى'],
  'كربلاء المقدسة': ['كربلاء المقدسة'],
  'ميسان': ['ميسان - العمارة'],
  'المثنى': ['السماوة'],
  'النجف الاشرف': ['الكوفة', 'النجف المركز'],
  'صلاح الدين': ['بلد', 'تكريت', 'سامراء'],
  'واسط': ['الصويرة', 'الكوت'],
};

// Cities list
const List<String> cities = [
  'بغداد',
  'الموصل',
  'البصرة',
  'أربيل',
  'السليمانية',
  'دهوك',
  'كركوك',
  'الأنبار',
  'بابل',
  'الديوانية',
  'ذي قار',
  'ديالى',
  'كربلاء المقدسة',
  'ميسان',
  'المثنى',
  'النجف الاشرف',
  'صلاح الدين',
  'واسط',
];
