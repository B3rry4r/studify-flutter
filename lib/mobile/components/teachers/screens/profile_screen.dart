import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/mobile/components/teachers/utils/teacher_data.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card.dart';

class ProfileScreenTeachers extends StatefulWidget {
  const ProfileScreenTeachers({super.key});

  @override
  State<ProfileScreenTeachers> createState() => _ProfileScreenTeachersState();
}

class _ProfileScreenTeachersState extends State<ProfileScreenTeachers>
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
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          AssetImage('../../../../assets/updatesImg.png'),
                      // child: Image(),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 0,
                      child: ClipOval(
                        child: Container(
                          width: 50,
                          height: 50,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFF00FF)
                                    .withOpacity(0.7), // Magenta
                                const Color(0xFF0000FF)
                                    .withOpacity(0.7), // Blue
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                  'Stephen Oghene',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomizableContentCard(
                  rows: rows4,
                  height: 30.0,
                  padding: 20.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomizableCard(
                  expandedContent: CustomTextField(
                    hintText: 'Enter New Email',
                    hintTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 1),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     spreadRadius: 2,
                    //     blurRadius: 20,
                    //     offset: const Offset(0, 10),
                    //   ),
                    // ],
                  ),
                  isTextLeft: true,
                  isStyleTwo: true,
                  leftText: 'Email',
                  leftTextStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.keyboard_arrow_down_outlined,
                  centerText1: 'stephen918@gmail.com',
                  centerTextStyle1: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomizableCard(
                  expandedContent: CustomTextField(
                    hintText: 'Enter New Number',
                    hintTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 1),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     spreadRadius: 2,
                    //     blurRadius: 20,
                    //     offset: const Offset(0, 10),
                    //   ),
                    // ],
                  ),
                  isTextLeft: true,
                  isStyleTwo: true,
                  leftText: 'Number',
                  leftTextStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  rightIcon1: Icons.keyboard_arrow_down_outlined,
                  centerText1: '+2349150473829',
                  centerTextStyle1: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: const CustomText(
                      'Update Profile',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )
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
                color: Colors.black.withOpacity(0.5), // Semi-transparent black
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3), // Apply blur
                  child: Center(
                    child: !_overlayDataChange
                        ? Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.circle_outlined,
                                  color: Color.fromARGB(255, 224, 135, 0),
                                  size: 60,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Verification',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                const CustomTextField(
                                  hintText: 'Enter Your Password',
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 1),
                                  height: 60,
                                  hintTextStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                  obscureText: true,
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {},
                                  child: const CustomText(
                                    'Forgot Password',
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                GestureDetector(
                                  onTap: _changeOverlayData,
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0, vertical: 15.0),
                                    child: const CustomText(
                                      'Verify',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 60,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Successful',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0, vertical: 15.0),
                                    child: const CustomText(
                                      'Continue',
                                      color: Colors.white,
                                      fontSize: 16,
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
    );
  }
}
