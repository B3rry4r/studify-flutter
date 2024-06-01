import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class TeachersOverview extends StatelessWidget {
  const TeachersOverview({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Teachers Overview',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
              const CustomTextRow(
                leftText: 'Overview',
                isLeftText: false,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/arrow_in.svg',
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Total Students',
                centerTextStyle1: TextStyle(
                  fontWeight: FontWeight.w500,
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
                isGradient3: true,
                isGradient: true,
                leftIconSize: 50.0,
                padding3: 18.0,
                padding: screenWidth < 380 ? 20 : 30,
              ),
              SizedBox(
                height: screenWidth < 380 ? 20 : 30,
              ),
              const Row(
                children: [
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '92%',
                      text2: 'Attendance',
                      svgPath: 'images/arrow_in.svg',
                    ),
                  ),
                  SizedBox(width: 16), // Space between cards
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '470',
                      text2: 'Checked In',
                      svgPath: 'images/arrow_in.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth < 380 ? 30 : 40,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/hat_G.svg',
                isStyleTwo: true,
                isGradient: false,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                borderRadius: BorderRadius.circular(10),
                padding: screenWidth < 380 ? 11 : 15,
                padding2: screenWidth < 380 ? 13 : 17,
                isDoublePadding: true,
                leftIconSize: 50,
                padding3: 10,
                centerText1: 'View Student Profiles',
                centerTextStyle1: TextStyle(
                  fontSize: screenWidth < 380 ? 13 : 16,
                  fontWeight: FontWeight.w500,
                ),
                rightIcon1: Icons.arrow_forward_ios_outlined,
                rightIconSize: screenWidth < 380 ? 13 : 16,
              ),
              SizedBox(
                height: screenWidth < 380 ? 20 : 30,
              ),
              const CustomTextRow(
                leftText: 'Attendance History',
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
