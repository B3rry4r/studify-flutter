import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ParentChildAttendanceScreen extends StatelessWidget {
  const ParentChildAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Micheal James',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
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
                rightText2: 'Early 30 minutes',
                rightTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 9 : 12,
                  color: Colors.black,
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
                rightText2: 'Early 30 minutes',
                rightTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 9 : 12,
                  color: Colors.black,
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
                rightText2: 'Early 30 minutes',
                rightTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 9 : 12,
                  color: Colors.black,
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
                rightText2: 'Early 30 minutes',
                rightTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 9 : 12,
                  color: Colors.black,
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
                rightText2: 'early 10 minutes',
                rightTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 9 : 12,
                  color: Colors.blueAccent,
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
            ],
          ),
        ),
      ),
    );
  }
}
