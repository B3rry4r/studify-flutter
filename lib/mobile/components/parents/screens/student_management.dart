import 'package:flutter/material.dart';
import 'package:studify/mobile/components/parents/screens/tracking_process.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class StudentManagementScreen extends StatefulWidget {
  const StudentManagementScreen({super.key});

  @override
  State<StudentManagementScreen> createState() =>
      _StudentManagementScreenState();
}

class _StudentManagementScreenState extends State<StudentManagementScreen> {
  void _navToSingleStudent() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const TrackingProcessScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
              SizedBox(
                height: screenWidth < 380 ? 15 : 20,
              ),
              CustomText(
                'Select Child For Tracking',
                fontSize: screenWidth < 380 ? 15 : 18,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 0,
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
