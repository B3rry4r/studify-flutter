import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/role_selection.dart';

class SingleStudentRecordScreen extends StatefulWidget {
  const SingleStudentRecordScreen({super.key});

  @override
  State<SingleStudentRecordScreen> createState() =>
      _SingleStudentRecordScreenState();
}

class _SingleStudentRecordScreenState extends State<SingleStudentRecordScreen> {
  String? selectedRole;
  final List<String> roles = ['Parent', 'Teacher', 'Admin'];

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
              const SizedBox(
                height: 5,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/hat_G.svg',
                isStyleTwo: true,
                isGradient: false,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                borderRadius: BorderRadius.circular(10),
                padding: 15,
                padding2: screenWidth < 380 ? 17 : 22,
                isDoublePadding: true,
                leftIconSize: 50,
                padding3: 10,
                centerText1: 'Micheal James',
                centerTextStyle1: TextStyle(
                  fontSize: screenWidth < 380 ? 13 : 16,
                  fontWeight: FontWeight.w300,
                ),
                centerText2: 'Currently In School',
                centerTextStyle2: TextStyle(
                  fontSize: screenWidth < 380 ? 10 : 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: screenWidth < 380 ? 10 : 15,
              ),
              CustomText(
                'Select Result Type',
                fontSize: screenWidth < 380 ? 15 : 18,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: screenWidth < 380 ? 10 : 15,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomDropdown(
                      height: 25,
                      isPadding: true,
                      padding: 6,
                      borderRadius: BorderRadius.circular(20),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth < 380 ? 10 : 12,
                        fontWeight: FontWeight.w300,
                      ),
                      isStyleTwo: true,
                      value: selectedRole,
                      items: roles,
                      hint: 'Select Role',
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 6), // Space between cards
                  Flexible(
                    child: CustomDropdown(
                      height: 25,
                      isPadding: true,
                      padding: 6,
                      borderRadius: BorderRadius.circular(20),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth < 380 ? 10 : 12,
                        fontWeight: FontWeight.w300,
                      ),
                      isStyleTwo: true,
                      value: selectedRole,
                      items: roles,
                      hint: 'Select Role',
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 6), // Space between cards
                  Flexible(
                    child: CustomDropdown(
                      height: 25,
                      isPadding: true,
                      padding: 6,
                      borderRadius: BorderRadius.circular(20),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth < 380 ? 10 : 12,
                        fontWeight: FontWeight.w300,
                      ),
                      isStyleTwo: true,
                      value: selectedRole,
                      items: roles,
                      hint: 'Select Role',
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth < 380 ? 10 : 15,
              ),
              Container(
                padding: const EdgeInsets.all(1),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFF00FF), // Magenta
                      Color(0xFF0000FF), // Blue
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        'Studify International High School',
                        fontWeight: FontWeight.w300,
                        fontSize: screenWidth < 380 ? 11 : 13,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      CustomText(
                        '2nd Term Continuos Assesment Results',
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth < 380 ? 11 : 13,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 10 : 15,
                      ),
                      const CustomTextRow(
                        leftText: 'Subject',
                        rightText: 'Grade',
                        isStyleTwo: true,
                        isBold: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      const CustomTextRow(
                        leftText: 'Mathematics',
                        rightText: 'A',
                        isStyleTwo: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      const CustomTextRow(
                        leftText: 'English',
                        rightText: 'C',
                        isStyleTwo: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      const CustomTextRow(
                        leftText: 'Computer Science',
                        rightText: 'A',
                        isStyleTwo: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      const CustomTextRow(
                        leftText: 'Computer Science',
                        rightText: 'A',
                        isStyleTwo: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      const CustomTextRow(
                        leftText: 'Computer Science',
                        rightText: 'A',
                        isStyleTwo: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 5 : 8,
                      ),
                      const CustomTextRow(
                        leftText: 'Computer Science',
                        rightText: 'A',
                        isStyleTwo: true,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 10 : 13,
                      ),
                      const CustomTextRow(
                        leftText: 'Overall AVG',
                        rightText: '2.46',
                        isStyleTwo: true,
                        isBold: true,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
