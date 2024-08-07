import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:studify/common/models/user.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/mobile/Screens/sign_up.dart';
import 'package:studify/mobile/components/admin/main_admin.dart';
import 'package:studify/mobile/components/parents/main_parents.dart';
import 'package:studify/mobile/components/teachers/main_teachers.dart';
import 'package:studify/mobile/widgets/action_button.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/in_app_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isLoading = false;
  final AuthService _authService = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void navigateToSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  Future<void> _handleSignIn() async {
    setState(() {
      _isLoading = true;
    });
    final String password = passwordController.text;
    final String email = emailController.text;

    // Create the JSON payload
    final Map<String, dynamic> userData = {
      'password': password,
      'email': email,
      // Add more fields as needed
    };

    // Convert the JSON payload to string
    final String requestBody = jsonEncode(userData);

    // Send POST request to register endpoint
    final Uri url = Uri.parse('http://localhost:5000/api/auth/login');
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    // Check if login was successful
    if (response.statusCode == 200) {
      await _authService
          .saveUserDataToSharedPreferences(jsonDecode(response.body));
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final String? role = responseData['role'];
      final String? name = responseData['name'];
      if (role == 'Admin') {
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => AdminMobileScreen(
                    name: name,
                    role: role,
                  )),
          (Route<dynamic> route) => false,
        );
      } else if (role == 'Teacher') {
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const TeachersMobileScreen()),
          (Route<dynamic> route) => false,
        );
      } else if (role == 'Parent') {
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const ParentsMobileScreen()),
          (Route<dynamic> route) => false,
        );
      }
    } else {
      setState(() {
        _isLoading = true;
      });
      // Registration failed, handle error
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final String errorMessage = responseData['message'];
      showNnotification(errorMessage, context);
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
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
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  width: screenWidth < 380 ? 40 : 50,
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/logo_sign_in.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
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
                          fontSize: screenWidth < 380 ? 20 : 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      CustomTextField(
                        controller: emailController,
                        padding: screenWidth < 380
                            ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                            : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                        height: screenWidth < 380 ? 30 : 40,
                        hintText: 'Enter Your Email',
                        hintTextStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: screenWidth < 380 ? 11 : 13,
                        ),
                        textStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 11 : 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      CustomTextField(
                        controller: passwordController,
                        padding: screenWidth < 380
                            ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                            : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                        height: screenWidth < 380 ? 30 : 40,
                        hintText: 'Enter Your Password',
                        hintTextStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: screenWidth < 380 ? 11 : 13,
                        ),
                        textStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 11 : 13,
                          color: Colors.white,
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: _handleSignIn,
                        child: CustomActionButton(
                          text: 'Sign In',
                          width: 120,
                          loader: _isLoading,
                          height: screenWidth < 380 ? 30 : 40,
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
                                fontSize: screenWidth < 380 ? 10 : 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
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
                      SizedBox(height: screenWidth < 380 ? 15 : 40),
                      const Text(
                        'Sign In With',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.6),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularContainer(
                            svgExists: true,
                            svgPath: 'assets/images/google.svg',
                            backgroundColor: Colors.white.withOpacity(0.4),
                            width: screenWidth < 380 ? 40.0 : 60.0,
                            height: screenWidth < 380 ? 40.0 : 60.0,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircularContainer(
                            svgExists: true,
                            svgPath: 'assets/images/facebook.svg',
                            backgroundColor: Colors.white.withOpacity(0.4),
                            width: screenWidth < 380 ? 40.0 : 60.0,
                            height: screenWidth < 380 ? 40.0 : 60.0,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircularContainer(
                            svgExists: true,
                            svgPath: 'assets/images/twitter.svg',
                            backgroundColor: Colors.white.withOpacity(0.4),
                            width: screenWidth < 380 ? 40.0 : 60.0,
                            height: screenWidth < 380 ? 40.0 : 60.0,
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 40),
                      CustomActionButton(
                          text: 'Continue As Guest',
                          width: double.infinity,
                          height: screenWidth < 380 ? 40.0 : 60.0,
                          backgroundColor: Colors.white.withOpacity(0.4),
                          color: Colors.white)
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
