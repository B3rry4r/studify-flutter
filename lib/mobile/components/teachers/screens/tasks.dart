import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Tasks',
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
              child: CustomText(
                'Deadlines',
                fontSize: screenWidth < 370 ? 12 : 14,
                fontWeight: FontWeight.w400,
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.grey.shade300,
              child: const CustomText(
                'Tasks',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth < 370 ? 0.0 : 20.0),
              child: Column(
                children: [
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomizableCard(
                    isTextLeft: true,
                    padding: screenWidth < 370 ? 15 : 20,
                    isStyleTwo: true,
                    leftText: 'Create Exam Questions',
                    leftTextStyle: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    rightText1: '10 Jun 2024',
                    rightTextStyle1: TextStyle(
                      fontSize: screenWidth < 370 ? 10 : 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
