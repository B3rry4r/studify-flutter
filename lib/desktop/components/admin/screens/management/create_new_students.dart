import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/management_notifier.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/in_app_notifications.dart';

class CreateStudentProfile extends StatefulWidget {
  final VoidCallback onBack;

  const CreateStudentProfile({required this.onBack, super.key});

  @override
  State<CreateStudentProfile> createState() => _CreateStudentProfileState();
}

class _CreateStudentProfileState extends State<CreateStudentProfile> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController dOBController = TextEditingController();
  final TextEditingController residentController = TextEditingController();
  final TextEditingController parentController = TextEditingController();
  final TextEditingController stateOfOriginController = TextEditingController();
  bool _isLoading = false;

  Future<void> createProfile() async {
    setState(() {
      _isLoading = true;
    });
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String password = firstNameController.text;
    // String email = firstNameController.text;
    String portableId = firstNameController.text;
    String dateOfBirth = dOBController.text;
    String stateOfOrigin = stateOfOriginController.text;
    String residentialAddress = residentController.text;
    String parent = '';
    // List courses = [];
    final Uri url = Uri.parse(
        'https://c3b8-102-90-82-178.ngrok-free.app/api/auth/register');

    final Map<String, dynamic> userData = {
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
      'email': firstName,
      'role': 'Student',
      'profileImage': 'newUser',
      'additionalData': {
        'dateOfBirth': dateOfBirth,
        'stateOfOrigin': stateOfOrigin,
        'classId': '67b3621726a90ce1b7ecbac6',
        'parent': parent,
        'residentialAddress': residentialAddress,
      }
      // Add more fields as needed
    };
    final String requestBody = jsonEncode(userData);
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 201) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final String? id = responseData['_id'];
      // final String? portableId = responseData[];
      print(id);
      showNnotification('Successfully Created an account with id $id', context);
      setState(() {
        _isLoading = false;
      });
    } else {
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
    // var model = Provider.of<ManagementNotifier>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  onPressed: widget.onBack,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'Create New Student Profile',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Add your form or content for creating a new student profile here
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            width: double.infinity,
                            height: 150,
                            'assets/images/signin.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: ClipOval(
                              child: Image.asset(
                                width: 130,
                                height: 130,
                                'assets/images/signin.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: ClipOval(
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFFF00FF), // Magenta
                                      Color(0xFF0000FF), // Blue
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        controller: firstNameController,
                        hintText: 'Enter First Name',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        // controller: ,
                        hintText: 'Enter Middle Name',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        controller: lastNameController,
                        hintText: 'Enter Last Name',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        hintText: 'Enter Guardian\'s First Name',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        hintText: 'Enter Guardian\'s Last Name',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        hintText: 'Enter Guardian\'s Phone Number',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        controller: dOBController,
                        hintText: 'Date Of Birth',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        controller: stateOfOriginController,
                        hintText: 'State Of Origin',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        controller: residentController,
                        hintText: 'Residential Address',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        // controller: dOBController,
                        hintText: 'Nationality',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        // controller: stateOfOriginController,
                        hintText: 'Gender',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: CustomTextField(
                        // controller: residentController,
                        hintText: 'Class',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 0.7,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: createProfile,
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: _isLoading
                          ? const SizedBox(
                              width: 15,
                              height: 15,
                              child: CircularProgressIndicator(
                                strokeWidth: 1,
                                color: Colors.white,
                              ),
                            )
                          : const CustomText(
                              'Create Account',
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
