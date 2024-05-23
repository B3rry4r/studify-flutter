import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class StudentsAttendanceHistoryScreen extends StatelessWidget {
  const StudentsAttendanceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Students Attendance History',
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.grey.shade300,
              child: const CustomText(
                'Today',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: '../../../../assets/arrow_in.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Check In',
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'July 23, 2024',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    rightText2: 'Early 10 minutes',
                    rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50,
                    padding: 20,
                    padding3: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
