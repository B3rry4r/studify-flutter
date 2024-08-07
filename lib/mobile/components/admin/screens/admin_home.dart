import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:studify/mobile/components/admin/utils/mobilenotifier.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card.dart';

class HomeAdmins extends StatefulWidget {
  const HomeAdmins({super.key});

  @override
  State<HomeAdmins> createState() => _HomeAdminsState();
}

class _HomeAdminsState extends State<HomeAdmins> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final List<Map<String, dynamic>> rows4 = [
      {
        'text1': {
          'value': 'Position',
          'style': TextStyle(
            fontSize: screenWidth < 370 ? 10 : 12,
            color: Colors.black,
          )
        },
        'text2': {
          'value': 'Teacher',
          'style': TextStyle(
            fontSize: screenWidth < 370 ? 10 : 12,
            color: Colors.black,
          )
        },
      },
      {
        'text1': {
          'value': 'Attendace Score',
          'style': TextStyle(
            fontSize: screenWidth < 370 ? 10 : 12,
            color: Colors.black,
          )
        },
        'text2': {
          'value': '80%',
          'style': TextStyle(
            fontSize: screenWidth < 370 ? 10 : 12,
            color: Colors.black,
          )
        },
      },
      {
        'text1': {
          'value': 'Number Of Classes',
          'style': TextStyle(
            fontSize: screenWidth < 370 ? 10 : 12,
            color: Colors.black,
          )
        },
        'text2': {
          'value': '4',
          'style': TextStyle(
            fontSize: screenWidth < 370 ? 10 : 12,
            color: Colors.black,
          )
        },
      },
    ];
    double screenHeight = MediaQuery.of(context).size.height;

    return Consumer<MobileHomeNotifier>(
      builder: (context, mobileNotifier, child) {
        if (mobileNotifier.isLoading) {
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

        return Stack(
          children: [
            Positioned.fill(
              top: 0,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
                  child: Column(
                    children: [
                      CustomTextRow(
                        leftText: 'Updates',
                        passedFunction: () {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                              image: AssetImage('assets/images/updatesImg.png'),
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFFFF00FF)
                                        .withOpacity(0.25), // Magenta
                                    const Color(0xFF0000FF)
                                        .withOpacity(0.25), // Blue
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ),
                          const Positioned.fill(
                            top: 150,
                            left: 35,
                            child: CustomText(
                              'News From The School',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomTextRow(
                        leftText: 'Student Enrollment',
                        passedFunction: () {},
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      CustomizableCard(
                        leftIconPath: 'assets/images/hat_G.svg',
                        isStyleTwo: true,
                        isGradient: false,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        borderRadius: BorderRadius.circular(10),
                        padding: 15,
                        padding2: screenWidth < 380 ? 17 : 22,
                        isDoublePadding: true,
                        leftIconSize: 50,
                        padding3: 10,
                        centerText1: 'Total Enrollment',
                        centerTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 13 : 16,
                          fontWeight: FontWeight.w300,
                        ),
                        centerText2: 'Ada George Branch',
                        centerTextStyle2: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 12,
                          fontWeight: FontWeight.w300,
                        ),
                        rightText1: mobileNotifier.noOfStudents,
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 13 : 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 8 : 10,
                      ),
                      CustomizableCard(
                        leftText: 'Senior Secondary School 1',
                        rightText1: mobileNotifier.ss1.length.toString(),
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w300,
                        ),
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w500,
                        ),
                        isStyleTwo: true,
                        isTextLeft: true,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 8 : 10,
                      ),
                      CustomizableCard(
                        leftText: 'Senior Secondary School 2',
                        rightText1: mobileNotifier.ss2.length.toString(),
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w300,
                        ),
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w500,
                        ),
                        isStyleTwo: true,
                        isTextLeft: true,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 8 : 10,
                      ),
                      CustomizableCard(
                        leftText: 'Senior Secondary School 3',
                        rightText1: mobileNotifier.ss3.length.toString(),
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w300,
                        ),
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w500,
                        ),
                        isStyleTwo: true,
                        isTextLeft: true,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 10 : 15,
                      ),
                      CustomTextRow(
                        leftText: 'Attendnce Summary',
                        passedFunction: () {},
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      CustomizableCard(
                        leftIconPath: 'assets/images/hat_G.svg',
                        isStyleTwo: true,
                        isGradient: false,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        borderRadius: BorderRadius.circular(10),
                        padding: 15,
                        padding2: screenWidth < 380 ? 17 : 22,
                        isDoublePadding: true,
                        leftIconSize: 50,
                        padding3: 10,
                        centerText1: 'Today',
                        centerTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 13 : 16,
                          fontWeight: FontWeight.w300,
                        ),
                        centerText2: 'Students',
                        centerTextStyle2: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 12,
                          fontWeight: FontWeight.w300,
                        ),
                        rightText1: '90%',
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 13 : 16,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText2: '400',
                        rightTextStyle2: TextStyle(
                          fontSize: screenWidth < 380 ? 13 : 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 8 : 10,
                      ),
                      CustomizableCard(
                        leftText: 'This Month',
                        rightText1: '97%',
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w300,
                        ),
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w500,
                        ),
                        isStyleTwo: true,
                        isTextLeft: true,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 10 : 15,
                      ),
                      CustomizableCard(
                        leftText: 'This Week',
                        rightText1: '89%',
                        leftTextStyle: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w300,
                        ),
                        rightTextStyle1: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 13,
                          fontWeight: FontWeight.w500,
                        ),
                        isStyleTwo: true,
                        isTextLeft: true,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 10 : 15,
                      ),
                      CustomTextRow(
                        leftText: 'Fee Collection Status',
                        passedFunction: () {},
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      CustomizableContentCard(
                        rows: rows4,
                        height: 30.0,
                        padding: 20.0,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 10 : 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 15,
              bottom: 15,
              child: ClipOval(
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                        const Color(0xFF0000FF).withOpacity(0.7), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: InkWell(
                    child: ClipOval(
                      child: Container(
                        width: screenWidth < 380 ? 45 : 60,
                        height: screenWidth < 380 ? 45 : 60,
                        color: Colors.white,
                        child: Icon(
                          Icons.messenger_sharp,
                          color: Colors.blue,
                          size: screenWidth < 380 ? 15 : 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
