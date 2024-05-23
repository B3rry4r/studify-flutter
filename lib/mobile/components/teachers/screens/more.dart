import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/mobile/Screens/sign_in.dart';
import 'package:studify/mobile/components/teachers/screens/attendance_history.dart';
import 'package:studify/mobile/components/teachers/screens/faq.dart';
import 'package:studify/mobile/components/teachers/screens/feedback.dart';
import 'package:studify/mobile/components/teachers/screens/students_attendance_history.dart';
import 'package:studify/mobile/components/teachers/screens/students_records.dart';
import 'package:studify/mobile/components/teachers/screens/tasks.dart';
import 'package:studify/mobile/components/teachers/screens/updates.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class MoreScreenTeachers extends StatefulWidget {
  const MoreScreenTeachers({super.key});

  @override
  State<MoreScreenTeachers> createState() => _MoreScreenTeachersState();
}

class _MoreScreenTeachersState extends State<MoreScreenTeachers> {
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

  void _navToTasks() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const TasksScreen(),
      ),
    );
  }

  void _navToAttendanceHistory() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AttendanceHistory(),
      ),
    );
  }

  void _navToStudentsHistory() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const StudentsAttendanceHistoryScreen(),
      ),
    );
  }

  void _navToStudentsRecords() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const StudentsRecordsScreen(),
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomizableCard(
              passedFunction: _navToUpdates,
              isTextLeft: true,
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Updates',
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
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
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Attendance History',
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              passedFunction: _navToStudentsHistory,
              isTextLeft: true,
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Students Attendance History',
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
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
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Students Records',
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            const CustomizableCard(
              isTextLeft: true,
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Classes and Schedules',
              leftTextStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            CustomizableCard(
              isTextLeft: true,
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Tasks',
              passedFunction: _navToTasks,
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
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
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'FAQ',
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
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
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Feedback & Support',
              leftTextStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            const CustomizableCard(
              isTextLeft: true,
              padding: 20,
              padding2: 10,
              isStyleTwo: true,
              leftText: 'Settings',
              leftTextStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: _logout,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: const CustomText(
                    'Log Out',
                    fontSize: 17,
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
