import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class AttendanceHistory extends StatelessWidget {
  const AttendanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomizableCardBig(
                    width: 190,
                    text1: '28 Days',
                    text2: 'Total Attendance',
                    svgPath: '../../../../assets/arrow_in.svg',
                  ),
                  CustomizableCardBig(
                    width: 190,
                    text1: '90%',
                    text2: 'On Time',
                    svgPath: '../../../../assets/arrow_in.svg',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomizableCard(
                leftIconPath: '../../../../assets/arrow_in.svg',
                // isGradient: true,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
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
                rightText1: '8:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'Late 30 minutes',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.red,
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
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Check Out',
                centerTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                centerText2: 'July 22, 2024',
                centerTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                rightText1: '4:00',
                rightTextStyle1: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                rightText2: 'On Time',
                rightTextStyle2: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                isRight: true,
                leftIconBackgroundColor: Colors.red.shade600,
                leftIconSize: 50,
                padding: 20,
                padding3: 30,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
