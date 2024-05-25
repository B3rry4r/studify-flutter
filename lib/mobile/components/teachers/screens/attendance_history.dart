import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class AttendanceHistory extends StatelessWidget {
  const AttendanceHistory({super.key});

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '96',
                      text2: 'Total Attendance',
                      svgPath: 'assets/images/arrow_in.svg',
                    ),
                  ),
                  SizedBox(width: 16), // Space between cards
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '67%',
                      text2: 'On time',
                      svgPath: 'assets/images/arrow_in.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/arrow_in.svg',
                // isGradient: true,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
    );
  }
}
