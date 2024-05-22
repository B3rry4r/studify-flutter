import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class StudentsAttendanceScreen extends StatelessWidget {
  const StudentsAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      centerText1: 'Total Students',
                      centerTextStyle1: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                      centerText2: 'Ada George Branch',
                      centerTextStyle2: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      rightText1: '479',
                      rightTextStyle1: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      isRight: true,
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: 50,
                      padding: 30,
                      padding2: 90,
                      padding3: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomizableCardBig(
                          width: 190,
                          text1: '479',
                          text2: 'Expected Students',
                          svgPath: '../../../../assets/arrow_in.svg',
                        ),
                        CustomizableCardBig(
                          width: 190,
                          text1: '470',
                          text2: 'Present Students',
                          svgPath: '../../../../assets/arrow_in.svg',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const CustomTextRow(
                      leftText: 'Check In & Check Out Time',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomizableCardBig(
                          width: 190,
                          text1: '6:30-7:00',
                          text2: 'Check In Time',
                          svgPath: '../../../../assets/arrow_in.svg',
                        ),
                        CustomizableCardBig(
                          width: 190,
                          text1: '6:30-7:00',
                          text2: 'Check In Time',
                          svgPath: '../../../../assets/arrow_in.svg',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const CustomTextRow(
                      leftText: 'Attendance History',
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
                      height: 120,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: CustomizableCard(
                leftIconPath: '../../../../assets/arrow_right.svg',
                centerText1: 'Swipe to Open QR Scanner',
                isGradient: false,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                padding: 10.0,
                isStyleTwo: true,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                centerTextStyle1: TextStyle(),
                leftIconBackgroundColor: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
