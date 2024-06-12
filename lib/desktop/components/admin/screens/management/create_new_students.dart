import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';

class CreateStudentProfile extends StatelessWidget {
  final VoidCallback onBack;

  const CreateStudentProfile({required this.onBack, super.key});

  @override
  Widget build(BuildContext context) {
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
                  onPressed: onBack,
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
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: CustomText(
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
