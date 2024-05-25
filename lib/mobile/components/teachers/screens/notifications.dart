import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class TeachersNotificationScreen extends StatelessWidget {
  const TeachersNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Notifications',
          fontSize: 17,
          fontWeight: FontWeight.w500,
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.grey.shade300,
              child: const CustomText(
                'Older',
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
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomizableCard(
                    leftIconPath: 'assets/images/profile2.svg',
                    // isGradient: true,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    centerText1: 'Admin',
                    centerText3: 'We will change the color ...',
                    centerTextStyle3: const TextStyle(
                      fontSize: 11,
                      overflow: TextOverflow.clip,
                    ),
                    centerTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    centerText2: 'Ada George Branch',
                    centerTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    rightText1: '7:20',
                    rightTextStyle1: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    isRight: true,
                    leftIconBackgroundColor: Colors.blueAccent,
                    leftIconSize: 50.0,
                    padding3: 18,
                    padding: screenWidth < 380 ? 15 : 20,
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
