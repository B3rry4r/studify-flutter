import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/desktop/screens/sign_in.dart';

class SplashScreenDesktop extends StatefulWidget {
  const SplashScreenDesktop({super.key});

  @override
  State<SplashScreenDesktop> createState() => _SplashScreenDesktopState();
}

class _SplashScreenDesktopState extends State<SplashScreenDesktop> {
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

  _checkUserSignedIn() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const SignInScreenDesktop()),
    );
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool userSignedIn = prefs.getBool('userSignedIn') ?? false;
    // String role = prefs.getString('role') ?? '';

    // if (userSignedIn) {
    //   if (role == 'teacher') {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const TeachersMobileScreen()),
    //     );
    //   } else if (role == 'parent') {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const ParentsMobileScreen()),
    //     );
    //   } else if (role == 'admin') {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const AdminMobileScreen()),
    //     );
    //   } else {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const ParentsMobileScreen()),
    //     );
    //   }
    // } else {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => const SignInScreen()),
    //   );
    // }
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
