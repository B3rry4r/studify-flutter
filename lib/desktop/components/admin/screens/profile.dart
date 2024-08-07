import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/desktop/components/admin/utils/profile_notifier.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class ProfileAdminDesktopScreen extends StatefulWidget {
  const ProfileAdminDesktopScreen({super.key});

  @override
  State<ProfileAdminDesktopScreen> createState() =>
      _ProfileAdminDesktopScreenState();
}

class _ProfileAdminDesktopScreenState extends State<ProfileAdminDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Consumer<ProfileNotifier>(
      builder: (context, profileNotifier, child) {
        if (profileNotifier.isLoading) {
          return Container(
            width: double.infinity,
            height: screenHeight - 60,
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(40),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return SingleChildScrollView(
          child: Container(
            width: double.infinity,

            // height: screenheight - 60,
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
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
                          left: 30,
                          bottom: 10,
                          child: ClipOval(
                            child: Image.asset(
                              width: 110,
                              height: 110,
                              'assets/images/signin.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 170,
                          bottom: 20,
                          child: Container(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      profileNotifier.firstName,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    CustomText(
                                      profileNotifier.userRole,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      profileNotifier.userEmail,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const CustomText(
                                      'Email',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: CustomText(
                    'Update Profile',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 600,
                  child: Column(
                    children: [
                      CustomizableCard(
                        expandedContent: CustomTextField(
                          hintText: 'Enter New Email',
                          hintTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth < 380 ? 10 : 11,
                            fontWeight: FontWeight.w300,
                          ),
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth < 380 ? 10 : 11,
                            fontWeight: FontWeight.w300,
                          ),
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 1),
                          height: screenWidth < 380 ? 50 : 60,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 243, 243, 243),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        isTextLeft: true,
                        isStyleTwo: true,
                        leftText: 'Email',
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 11 : 12,
                          fontWeight: FontWeight.w500,
                        ),
                        rightIcon1: Icons.keyboard_arrow_down_outlined,
                        centerText1: profileNotifier.userEmail,
                        centerTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 11 : 12,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomizableCard(
                        expandedContent: CustomTextField(
                          hintText: 'Enter New Number',
                          hintTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth < 380 ? 12 : 11,
                            fontWeight: FontWeight.w300,
                          ),
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth < 380 ? 12 : 11,
                            fontWeight: FontWeight.w300,
                          ),
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 1),
                          height: screenWidth < 380 ? 50 : 60,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 243, 243, 243),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        isTextLeft: true,
                        isStyleTwo: true,
                        leftText: 'Number',
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 14 : 12,
                          fontWeight: FontWeight.w500,
                        ),
                        rightIcon1: Icons.keyboard_arrow_down_outlined,
                        centerText1: profileNotifier.userNumber,
                        centerTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 13 : 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFFF00FF).withOpacity(0.7),
                          const Color(0xFF0000FF).withOpacity(0.7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: screenWidth < 380 ? 10 : 15,
                  ),
                  child: CustomText(
                    'Update Profile',
                    color: Colors.white,
                    fontSize: screenWidth < 380 ? 14 : 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
