import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studify/mobile/components/teachers/utils/teacher_data.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card.dart';

class SingleStudentAttendanceScreenAdmins extends StatefulWidget {
  const SingleStudentAttendanceScreenAdmins({super.key});

  @override
  State<SingleStudentAttendanceScreenAdmins> createState() =>
      _SingleStudentAttendanceScreenAdminsState();
}

class _SingleStudentAttendanceScreenAdminsState
    extends State<SingleStudentAttendanceScreenAdmins>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isOverlayVisible = false;
  bool _overlayDataChange = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleOverlayVisibility() {
    setState(() {
      _isOverlayVisible = !_isOverlayVisible;
      if (_isOverlayVisible) {
        _controller.forward();
      } else {
        _controller.reverse();
        _overlayDataChange = false;
      }
    });
  }

  void _changeOverlayData() {
    setState(() {
      _overlayDataChange = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Attendance',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        elevation: 1,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/updatesImg.png'),
                    // child: Image(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomText(
                    'Stephen Oghene',
                    fontSize: screenWidth < 380 ? 18 : 25,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableContentCard(
                    rows: rows4,
                    height: 30.0,
                    padding: 20.0,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _toggleOverlayVisibility,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFFFF00FF).withOpacity(0.7),
                              const Color(0xFF0000FF).withOpacity(0.7),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: screenWidth < 380 ? 10 : 15,
                      ),
                      child: CustomText(
                        'Check Student In',
                        color: Colors.white,
                        fontSize: screenWidth < 380 ? 14 : 17,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextRow(leftText: 'Students Attendance History'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check Out',
                    centerTextStyle1: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth < 380 ? 10 : 15,
                    ),
                    centerText2: 'July 22, 2024',
                    centerTextStyle2: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth < 380 ? 10 : 12,
                    ),
                    rightText1: '4:00',
                    rightTextStyle1: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth < 380 ? 12 : 16,
                    ),
                    rightText2: 'On Time',
                    rightTextStyle2: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth < 380 ? 10 : 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.red.shade600,
                    leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
                    padding3: screenWidth < 380 ? 10 : 20,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  SizedBox(
                    height: screenWidth < 380 ? 15 : 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check Out',
                    centerTextStyle1: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth < 380 ? 10 : 15,
                    ),
                    centerText2: 'July 22, 2024',
                    centerTextStyle2: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth < 380 ? 10 : 12,
                    ),
                    rightText1: '4:00',
                    rightTextStyle1: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth < 380 ? 12 : 16,
                    ),
                    rightText2: 'On Time',
                    rightTextStyle2: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth < 380 ? 10 : 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.red.shade600,
                    leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
                    padding3: screenWidth < 380 ? 10 : 20,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  SizedBox(
                    height: screenWidth < 380 ? 15 : 20,
                  ),
                ],
              ),
            ),
          ),
          if (_isOverlayVisible)
            GestureDetector(
              onTap: _toggleOverlayVisibility,
              child: AnimatedOpacity(
                opacity: _isOverlayVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  color:
                      Colors.black.withOpacity(0.7), // Semi-transparent black
                  child: BackdropFilter(
                    filter:
                        ImageFilter.blur(sigmaX: 1, sigmaY: 1), // Apply blur
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: screenWidth < 380 ? 20 : 40,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Checked In',
                              style: TextStyle(
                                fontSize: screenWidth < 380 ? 17 : 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: _toggleOverlayVisibility,
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color(0xFFFF00FF)
                                            .withOpacity(0.7),
                                        const Color(0xFF0000FF)
                                            .withOpacity(0.7),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth < 380 ? 20 : 30,
                                  vertical: screenWidth < 380 ? 13 : 15,
                                ),
                                child: CustomText(
                                  'Continue',
                                  color: Colors.white,
                                  fontSize: screenWidth < 380 ? 11 : 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
