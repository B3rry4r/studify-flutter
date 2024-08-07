import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/desktop/components/admin/main_admin.dart';
import 'package:studify/desktop/screens/sign_in.dart';
import 'package:studify/mobile/widgets/action_button.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/in_app_notifications.dart';
import 'package:studify/mobile/widgets/role_selection.dart';

class SignUpScreenDesktop extends StatefulWidget {
  const SignUpScreenDesktop({super.key});

  @override
  State<SignUpScreenDesktop> createState() => _SignUpScreenDesktopState();
}

class _SignUpScreenDesktopState extends State<SignUpScreenDesktop> {
  bool _isLoading = false;
  String? selectedRole;
  final List<String> roles = ['Parent', 'Teacher', 'Admin'];
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  void _navigateToSignIn() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignInScreenDesktop(),
      ),
    );
  }

  Future<void> _handleSignUp() async {
    setState(() {
      _isLoading = true;
    });
    final String firstName = firstNameController.text;
    final String lastName = lastNameController.text;
    final String password = passwordController.text;
    final String email = emailController.text;

    // Create the JSON payload
    final Map<String, dynamic> userData = {
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
      'email': email,
      'role': selectedRole,
      'profileImage': 'newUser',
      // Add more fields as needed
    };

    // Convert the JSON payload to string
    final String requestBody = jsonEncode(userData);

    // Send POST request to register endpoint
    final Uri url = Uri.parse('http://localhost:5000/api/auth/register');
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    // Check if registration was successful
    if (response.statusCode == 201) {
      await _authService
          .saveUserDataToSharedPreferences(jsonDecode(response.body));
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final String? role = responseData['role'];
      if (role == 'Admin') {
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const AdminDesktopScreen()),
          (Route<dynamic> route) => false,
        );
      } else if (role == 'Teacher') {
        setState(() {
          _isLoading = false;
        });
        _navigateToSignIn();
      } else if (role == 'Parent') {
        setState(() {
          _isLoading = false;
        });
        _navigateToSignIn();
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
              color: Colors.black
                  .withOpacity(0.3), // Adds a dark overlay with opacity
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
            width: screenWidth < 380 ? 550 : 550,
            padding: EdgeInsets.all(
              screenWidth < 380 ? 20 : 30,
            ),
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: screenWidth < 380 ? 35 : 40,
                  child: Image.asset('assets/images/logo_sign_in.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.3), // Background color with opacity
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white
                          .withOpacity(0.5), // Border color with opacity
                      width: 1, // Border width
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: screenWidth < 380 ? 20 : 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      Row(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              controller: firstNameController,
                              padding: screenWidth < 380
                                  ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                                  : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                              height: screenWidth < 380 ? 30 : 40,
                              textStyle: TextStyle(
                                fontSize: screenWidth < 380 ? 11 : 13,
                                color: Colors.white,
                              ),
                              hintText: 'First Name',
                              hintTextStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: screenWidth < 380 ? 11 : 13,
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth < 380 ? 15 : 20),
                          Flexible(
                            child: CustomTextField(
                              controller: lastNameController,
                              padding: screenWidth < 380
                                  ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                                  : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                              height: screenWidth < 380 ? 30 : 40,
                              hintText: 'Last Name',
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
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      Row(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              controller: emailController,
                              padding: screenWidth < 380
                                  ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                                  : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                              height: screenWidth < 380 ? 30 : 40,
                              textStyle: TextStyle(
                                fontSize: screenWidth < 380 ? 11 : 13,
                                color: Colors.white,
                              ),
                              hintText: 'Email',
                              hintTextStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: screenWidth < 380 ? 11 : 13,
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth < 380 ? 15 : 20),
                          Flexible(
                            child: CustomTextField(
                              controller: passwordController,
                              padding: screenWidth < 380
                                  ? const EdgeInsets.fromLTRB(5, 14, 5, 0)
                                  : const EdgeInsets.fromLTRB(5, 12, 5, 0),
                              height: screenWidth < 380 ? 30 : 40,
                              hintText: 'Password',
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
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      CustomDropdown(
                        value: selectedRole,
                        items: roles,
                        hint: 'Select Role',
                        onChanged: (value) {
                          setState(() {
                            selectedRole = value;
                          });
                        },
                      ),
                      SizedBox(height: screenWidth < 380 ? 15 : 20),
                      InkWell(
                        onTap: _handleSignUp,
                        child: CustomActionButton(
                          text: 'Sign Up',
                          loader: _isLoading,
                          width: 120,
                          height: screenWidth < 380 ? 30 : 40,
                          backgroundColor: Colors.white,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenWidth < 380 ? 10 : 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Already Have An Acount?',
                              style: TextStyle(
                                fontSize: screenWidth < 380 ? 10 : 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _navigateToSignIn,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                ' Sign In.',
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
                      SizedBox(height: screenWidth < 380 ? 10 : 15),
                      const Text(
                        'Sign Up With',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.6),
                      ),
                      SizedBox(height: screenWidth < 380 ? 10 : 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularContainer(
                            svgExists: true,
                            svgPath: 'assets/images/google.svg',
                            backgroundColor: Colors.white.withOpacity(0.4),
                            width: screenWidth < 380 ? 30 : 40,
                            height: screenWidth < 380 ? 30 : 40,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircularContainer(
                            svgExists: true,
                            svgPath: 'assets/images/facebook.svg',
                            backgroundColor: Colors.white.withOpacity(0.4),
                            width: screenWidth < 380 ? 30 : 40,
                            height: screenWidth < 380 ? 30 : 40,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircularContainer(
                            svgExists: true,
                            svgPath: 'assets/images/twitter.svg',
                            backgroundColor: Colors.white.withOpacity(0.4),
                            width: screenWidth < 380 ? 30 : 40,
                            height: screenWidth < 380 ? 30 : 40,
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth < 380 ? 10 : 15),
                      CustomActionButton(
                        text: 'Continue As Guest',
                        width: double.infinity,
                        height: screenWidth < 380 ? 25 : 35,
                        backgroundColor: Colors.white.withOpacity(0.4),
                        color: Colors.white,
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
