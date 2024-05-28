import 'package:flutter/material.dart';
import 'package:studify/mobile/components/parents/screens/single_student_record.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ParentsStudentsResultScreen extends StatefulWidget {
  const ParentsStudentsResultScreen({super.key});

  @override
  State<ParentsStudentsResultScreen> createState() =>
      _ParentsStudentsResultScreenState();
}

class _ParentsStudentsResultScreenState
    extends State<ParentsStudentsResultScreen> {
  void _navToSingleStudent() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SingleStudentRecordScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Student Results/Records',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
              SizedBox(
                height: screenWidth < 380 ? 15 : 20,
              ),
              // CustomText(
              //   'Select Child To View Results',
              //   fontSize: screenWidth < 380 ? 15 : 18,
              //   fontWeight: FontWeight.w400,
              // ),
              const CustomTextRow(
                leftText: 'Select Child To View Results',
                isLeftText: false,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomizableCard(
                passedFunction: _navToSingleStudent,
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
                rightIcon1: Icons.arrow_forward_ios,
                rightIconSize: screenWidth < 380 ? 15 : 18,
              ),
              SizedBox(
                height: screenWidth < 380 ? 10 : 15,
              ),
              CustomizableCard(
                passedFunction: _navToSingleStudent,
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
                centerText1: 'Rachel James',
                centerTextStyle1: TextStyle(
                  fontSize: screenWidth < 380 ? 13 : 16,
                  fontWeight: FontWeight.w300,
                ),
                centerText2: 'Not In School',
                centerTextStyle2: TextStyle(
                  fontSize: screenWidth < 380 ? 10 : 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.green,
                ),
                rightIcon1: Icons.arrow_forward_ios,
                rightIconSize: screenWidth < 380 ? 15 : 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
