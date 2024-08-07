import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/desktop/components/admin/main_admin.dart';
import 'package:studify/desktop/screens/sign_in.dart';
import 'package:studify/mobile/components/parents/main_parents.dart';
import 'package:studify/mobile/components/teachers/main_teachers.dart';

class SplashScreenDesktop extends StatefulWidget {
  const SplashScreenDesktop({super.key});

  @override
  State<SplashScreenDesktop> createState() => _SplashScreenDesktopState();
}

class _SplashScreenDesktopState extends State<SplashScreenDesktop> {
  final AuthService _authService = AuthService();

  @override
  void initState() {
    super.initState();
    _navigation();
  }

  _navigation() async {
    await Future.delayed(
      const Duration(seconds: 1),
      _checkUserSignedIn,
    );
  }

  _checkUserSignedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userDataString = prefs.getString('userData') ?? 'null';
    Map<String, dynamic>? userData;
    String? role;

    if (userDataString != 'null') {
      userData = jsonDecode(userDataString) as Map<String, dynamic>;
    }

    if (userData != null) {
      role = userData['role'];
      if (role != null) {
        if (role == 'Teacher') {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const AdminDesktopScreen()),
          );
        } else if (role == 'Parent') {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const AdminDesktopScreen()),
          );
        } else if (role == 'Admin') {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const AdminDesktopScreen()),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const AdminDesktopScreen()),
          );
        }
      }
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SignInScreenDesktop()),
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
        child: Image.asset(
          'assets/images/logo.png',
        ),
      ),
    );
  }
}
