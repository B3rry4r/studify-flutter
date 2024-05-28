import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/mobile/Screens/sign_in.dart';
import 'package:studify/mobile/components/parents/screens/paymet_history.dart';
import 'package:studify/mobile/components/parents/screens/student_attendance_history.dart';
import 'package:studify/mobile/components/parents/screens/student_results.dart';
import 'package:studify/mobile/components/teachers/screens/faq.dart';
import 'package:studify/mobile/components/teachers/screens/feedback.dart';
import 'package:studify/mobile/components/teachers/screens/tasks.dart';
import 'package:studify/mobile/components/teachers/screens/updates.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class MoreScreenParents extends StatefulWidget {
  const MoreScreenParents({super.key});

  @override
  State<MoreScreenParents> createState() => _MoreScreenParentsState();
}

class _MoreScreenParentsState extends State<MoreScreenParents> {
  void _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('userSignedIn', false);
    prefs.remove('role');
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SignInScreen()));
  }

  void _navToUpdates() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UpdatesScreen(),
      ),
    );
  }

  void _navToPaymentHistory() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PaymentHistoryScreen(),
      ),
    );
  }

  void _navToAttendanceHistory() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ParentStudentAttendanceHistory(),
      ),
    );
  }

  void _navToStudentsRecords() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ParentsStudentsResultScreen(),
      ),
    );
  }

  void _navToStudentsFAQ() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const FAQScreen(),
      ),
    );
  }

  void _navToStudentsFeedback() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const FeedbackScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomizableCard(
              passedFunction: _navToUpdates,
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'Alumni/Updates',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              passedFunction: _navToAttendanceHistory,
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'Students Attendance History',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              passedFunction: _navToStudentsRecords,
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'Students Results/Records',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              passedFunction: _navToPaymentHistory,
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'Payment History',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              passedFunction: _navToStudentsFAQ,
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'FAQ',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              passedFunction: _navToStudentsFeedback,
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'Feedback & Support',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              isTextLeft: true,
              padding: screenWidth < 380 ? 14 : 20,
              padding2: screenWidth < 380 ? 8 : 10,
              isStyleTwo: true,
              leftText: 'Settings',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 13 : 15,
                fontWeight: FontWeight.w400,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: screenWidth < 380 ? 25 : 45,
            ),
            GestureDetector(
              onTap: _logout,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 380 ? 15 : 20,
                    vertical: screenWidth < 380 ? 8 : 10,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: CustomText(
                    'Log Out',
                    fontSize: screenWidth < 380 ? 13 : 15,
                    color: Colors.red,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
