import 'package:flutter/material.dart';
import 'package:studify/mobile/components/teachers/screens/attendance_history.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class TeachersAttendanceScreen extends StatefulWidget {
  const TeachersAttendanceScreen({super.key});

  @override
  State<TeachersAttendanceScreen> createState() =>
      _TeachersAttendanceScreenState();
}

class _TeachersAttendanceScreenState extends State<TeachersAttendanceScreen> {
  void _navToAttendanceHistory() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AttendanceHistory(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          CustomText(
                            'Check In Your Presence',
                            fontSize: screenWidth < 370 ? 18 : 20,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CircularContainer(
                            width: screenWidth < 370 ? 150 : 180,
                            height: screenWidth < 370 ? 150 : 180,
                            gradientExists: true,
                            padding: 8,
                            widgetIsNotNull: CircularContainer(
                              width: screenWidth < 370 ? 150 : 165,
                              height: screenWidth < 370 ? 150 : 165,
                              backgroundColor: Colors.white,
                              widgetIsNotNull: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    '14:59',
                                    fontSize: screenWidth < 370 ? 16 : 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomText(
                                    'Check In Time',
                                    fontSize: screenWidth < 370 ? 12 : 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              padding: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      children: [
                        Flexible(
                          child: CustomizableCardBig(
                            width: double.infinity,
                            text1: '6:30-7:00',
                            text2: 'Check In Time',
                            svgPath: 'images/arrow_in.svg',
                          ),
                        ),
                        SizedBox(width: 16), // Space between cards
                        Flexible(
                          child: CustomizableCardBig(
                            width: double.infinity,
                            text1: '6:30-7:00',
                            text2: 'Check In Time',
                            svgPath: 'images/arrow_in.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextRow(
                      leftText: 'Your Attendance',
                      passedFunction: _navToAttendanceHistory,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      // isGradient: true,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Check In',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
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
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 22, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '4:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'On Time',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.red.shade600,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
                    ),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      // isGradient: true,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Check In',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
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
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 22, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '4:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'On Time',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.red.shade600,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
                    ),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      // isGradient: true,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Check In',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
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
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 22, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '4:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'On Time',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.red.shade600,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
                    ),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      // isGradient: true,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Check In',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
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
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 22, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '4:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'On Time',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.red.shade600,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
                    ),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      // isGradient: true,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Check In',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
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
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 22, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '4:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'On Time',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.red.shade600,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
                    ),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      // isGradient: true,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Check In',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 15 : 20,
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
                        fontSize: screenWidth < 370 ? 10 : 15,
                      ),
                      centerText2: 'July 22, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      rightText1: '4:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 370 ? 12 : 16,
                      ),
                      rightText2: 'On Time',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 370 ? 10 : 12,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.red.shade600,
                      leftIconSize: screenWidth < 370 ? 30.0 : 50.0,
                      padding3: screenWidth < 370 ? 10 : 20,
                      padding: screenWidth < 370 ? 15 : 20,
                    ),
                    SizedBox(
                      height: screenWidth < 370 ? 80 : 120,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomizableCard(
                leftIconSize: screenWidth < 370 ? 30.0 : 60.0,
                padding3: screenWidth < 370 ? 10 : 20,
                leftIconPath: 'assets/images/arrow_right.svg',
                centerText1: 'Swipe to Check In',
                isGradient: false,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                padding: 10.0,
                isStyleTwo: true,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                centerTextStyle1: const TextStyle(),
                leftIconBackgroundColor: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
