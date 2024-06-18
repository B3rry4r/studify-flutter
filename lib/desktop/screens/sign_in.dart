import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studify/common/models/user.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/desktop/components/admin/main_admin.dart';
import 'package:studify/desktop/screens/sign_up.dart';
import 'package:studify/mobile/Screens/sign_up.dart';
import 'package:studify/mobile/components/admin/main_admin.dart';
import 'package:studify/mobile/components/parents/main_parents.dart';
import 'package:studify/mobile/components/teachers/main_teachers.dart';
import 'package:studify/mobile/widgets/action_button.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/in_app_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreenDesktop extends StatefulWidget {
  const SignInScreenDesktop({super.key});

  @override
  State<SignInScreenDesktop> createState() => _SignInScreenDesktopState();
}

class _SignInScreenDesktopState extends State<SignInScreenDesktop> {
  final AuthService _authService = AuthService();
  bool _isLoading = false;

  void navigateToSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreenDesktop(),
      ),
    );
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    User res = await _authService.login('admin', '0932032849');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('userSignedIn', true);
    prefs.setString('role', res.role);

    if (res.role == 'teacher') {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const TeachersMobileScreen()),
      );
    } else if (res.role == 'parent') {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ParentsMobileScreen()),
      );
    } else if (res.role == 'admin') {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AdminDesktopScreen()),
      );
    } else {
      showNnotification('Invalid Credentials', context);
      setState(() {
        _isLoading = false;
      });
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/signin.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFF00FF).withOpacity(0.3), // Magenta
                  const Color(0xFF0000FF).withOpacity(0.3), // Blue
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  width: screenWidth < 380 ? 40 : 45,
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/logo_sign_in.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth < 380 ? 300 : 350,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: screenWidth < 380 ? 15 : 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      CustomTextField(
                        padding: screenWidth < 380
                            ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                            : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                        height: screenWidth < 380 ? 30 : 40,
                        hintText: 'Enter Your Email',
                        hintTextStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: screenWidth < 380 ? 10 : 12,
                        ),
                        textStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      CustomTextField(
                        padding: screenWidth < 380
                            ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                            : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                        height: screenWidth < 380 ? 30 : 40,
                        hintText: 'Enter Your Password',
                        hintTextStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: screenWidth < 380 ? 10 : 12,
                        ),
                        textStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 12,
                          color: Colors.white,
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: loginUser,
                        child: CustomActionButton(
                          text: 'Sign In',
                          width: 120,
                          height: screenWidth < 380 ? 25 : 35,
                          backgroundColor: Colors.white,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Don\'t Have An Acount?',
                              style: TextStyle(
                                fontSize: screenWidth < 380 ? 10 : 11,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: navigateToSignUp,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                ' Sign Up.',
                                style: TextStyle(
                                  fontSize: screenWidth < 380 ? 10 : 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF0000FF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      const Text(
                        'Sign In With',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        width: screenWidth < 380 ? 300 : 350,
                        child: Divider(
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 10 : 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: CircularContainer(
                              svgExists: true,
                              svgPath: 'assets/images/google.svg',
                              backgroundColor: Colors.white.withOpacity(0.4),
                              width: screenWidth < 380 ? 30 : 40,
                              height: screenWidth < 380 ? 30 : 40,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: CircularContainer(
                              svgExists: true,
                              svgPath: 'assets/images/facebook.svg',
                              backgroundColor: Colors.white.withOpacity(0.4),
                              width: screenWidth < 380 ? 30 : 40,
                              height: screenWidth < 380 ? 30 : 40,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: CircularContainer(
                              svgExists: true,
                              svgPath: 'assets/images/twitter.svg',
                              backgroundColor: Colors.white.withOpacity(0.4),
                              width: screenWidth < 380 ? 30 : 40,
                              height: screenWidth < 380 ? 30 : 40,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth < 380 ? 10 : 15),
                      SizedBox(
                        width: screenWidth < 380 ? 300 : 350,
                        child: InkWell(
                          child: CustomActionButton(
                              text: 'Continue As Guest',
                              width: double.infinity,
                              height: screenWidth < 380 ? 30 : 40,
                              backgroundColor: Colors.white.withOpacity(0.4),
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
