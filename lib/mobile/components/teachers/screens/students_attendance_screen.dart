import 'package:flutter/material.dart';
import 'package:studify/mobile/components/teachers/screens/students_attendance_history.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class StudentsAttendanceScreen extends StatefulWidget {
  const StudentsAttendanceScreen({super.key});

  @override
  State<StudentsAttendanceScreen> createState() =>
      _StudentsAttendanceScreenState();
}

class _StudentsAttendanceScreenState extends State<StudentsAttendanceScreen> {
  void openMore() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const StudentsAttendanceHistoryScreen(),
    ));
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
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextRow(
                      leftText: 'Overview',
                      isLeftText: false,
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
                      centerText1: 'Total Students',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: screenWidth < 380 ? 15 : 18,
                      ),
                      centerText2: 'Ada George Branch',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 13,
                      ),
                      rightText1: '479',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 14 : 16,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: 50.0,
                      padding3: 18.0,
                      padding: screenWidth < 380 ? 20 : 30,
                    ),
                    const SizedBox(
                      height: 10,
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
                    const CustomTextRow(
                      leftText: 'Check In & Check Out Time',
                      isLeftText: false,
                    ),
                    const SizedBox(
                      height: 20,
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
                      leftText: 'Attendance History',
                      passedFunction: openMore,
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
                        fontSize: screenWidth < 380 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
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
                        fontSize: screenWidth < 380 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
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
                        fontSize: screenWidth < 380 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
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
                        fontSize: screenWidth < 380 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
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
                        fontSize: screenWidth < 380 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
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
                        fontSize: screenWidth < 380 ? 10 : 15,
                      ),
                      centerText2: 'July 23, 2024',
                      centerTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 10 : 12,
                      ),
                      rightText1: '8:00',
                      rightTextStyle1: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 12 : 16,
                      ),
                      rightText2: 'Late 30 minutes',
                      rightTextStyle2: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth < 380 ? 9 : 12,
                        color: Colors.red,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
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
                      height: screenWidth < 380 ? 80 : 120,
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
                leftIconSize: screenWidth < 380 ? 30.0 : 60.0,
                padding3: screenWidth < 380 ? 10 : 20,
                leftIconPath: 'assets/images/arrow_right.svg',
                centerText1: 'Swipe to Open QR Scanner',
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
