import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class TeachersAttendanceScreen extends StatelessWidget {
  const TeachersAttendanceScreen({super.key});

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
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          CustomText(
                            'Check In Your Presence',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CircularContainer(
                            width: 180,
                            height: 180,
                            gradientExists: true,
                            padding: 8,
                            widgetIsNotNull: CircularContainer(
                              width: 165,
                              height: 165,
                              backgroundColor: Colors.white,
                              widgetIsNotNull: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    '14:59',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomText(
                                    'Check In Time',
                                    fontSize: 15,
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
                      leftText: 'Your Attendance',
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
                centerText1: 'Swipe to Check In',
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
