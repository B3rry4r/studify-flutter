import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/mobile/Screens/sign_in.dart';
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'Updates',
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
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'Attendance History',
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
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'Students Attendance History',
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
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'Students Records',
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
            const CustomizableCard(
              isTextLeft: true,
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
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'Tasks',
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
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'FAQ',
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
            const CustomizableCard(
              isTextLeft: true,
              isStyleTwo: true,
              leftText: 'Feedback & Support',
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
            const CustomizableCard(
              isTextLeft: true,
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
