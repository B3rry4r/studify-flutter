import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/mobile/Screens/sign_in.dart';
import 'package:studify/mobile/Screens/sign_up.dart';
import 'package:studify/mobile/components/admin/screens/admin_home.dart';
import 'package:studify/mobile/components/parents/screens/parents_home.dart';
import 'package:studify/mobile/components/teachers/main_teachers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigation();
  }

  _navigation() async {
    await Future.delayed(
      const Duration(seconds: 4),
      _checkUserSignedIn,
    );
  }

  _checkUserSignedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool userSignedIn = prefs.getBool('userSignedIn') ?? false;
    String role = prefs.getString('role') ?? '';

    if (userSignedIn) {
      if (role == 'teacher') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const TeachersMobileScreen()),
        );
      } else if (role == 'parents') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeParents()),
        );
      } else if (role == 'admin') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeAdmin()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
        );
      }
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // Set the height and width to match the screen size
      height: screenHeight,
      width: screenWidth,
      color: Colors.white, // Set the background color to white
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
