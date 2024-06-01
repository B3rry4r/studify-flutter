import 'package:flutter/material.dart';
import 'package:studify/mobile/components/admin/screens/financial_management.dart';
import 'package:studify/mobile/components/admin/screens/students_overview.dart';
import 'package:studify/mobile/components/admin/screens/teachers_overview.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ManagementScreen extends StatefulWidget {
  const ManagementScreen({super.key});

  @override
  State<ManagementScreen> createState() => _ManagementScreenState();
}

class _ManagementScreenState extends State<ManagementScreen> {
  void _navToStudentsOverview() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const StudentsOverview(),
      ),
    );
  }

  void _navToTeachersOverview() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const TeachersOverview(),
      ),
    );
  }

  void _navToFinancialManagement() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const FinancialManagement(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
      child: Column(
        children: [
          CustomizableCard(
            passedFunction: _navToStudentsOverview,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: true,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 15,
            padding2: screenWidth < 380 ? 17 : 22,
            isDoublePadding: true,
            leftIconSize: 50,
            padding3: 10,
            centerText1: 'Student Overview',
            centerTextStyle1: TextStyle(
              fontSize: screenWidth < 380 ? 13 : 16,
              fontWeight: FontWeight.w500,
            ),
            rightIcon1: Icons.arrow_forward_ios_outlined,
            rightIconSize: screenWidth < 380 ? 13 : 16,
          ),
          SizedBox(
            height: screenWidth < 380 ? 8 : 10,
          ),
          CustomizableCard(
            passedFunction: _navToTeachersOverview,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: true,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 15,
            padding2: screenWidth < 380 ? 17 : 22,
            isDoublePadding: true,
            leftIconSize: 50,
            padding3: 10,
            centerText1: 'Teacher Overview',
            centerTextStyle1: TextStyle(
              fontSize: screenWidth < 380 ? 13 : 16,
              fontWeight: FontWeight.w500,
            ),
            rightIcon1: Icons.arrow_forward_ios_outlined,
            rightIconSize: screenWidth < 380 ? 13 : 16,
          ),
          SizedBox(
            height: screenWidth < 380 ? 8 : 10,
          ),
          CustomizableCard(
            passedFunction: _navToFinancialManagement,
            leftIconPath: 'assets/images/hat_G.svg',
            isStyleTwo: true,
            isGradient: false,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            padding: 15,
            padding2: screenWidth < 380 ? 17 : 22,
            isDoublePadding: true,
            leftIconSize: 50,
            padding3: 10,
            centerText1: 'Financial Overview',
            centerTextStyle1: TextStyle(
              fontSize: screenWidth < 380 ? 13 : 16,
              fontWeight: FontWeight.w500,
            ),
            rightIcon1: Icons.arrow_forward_ios_outlined,
            rightIconSize: screenWidth < 380 ? 13 : 16,
          ),
          SizedBox(
            height: screenWidth < 380 ? 8 : 10,
          ),
        ],
      ),
    );
  }
}
