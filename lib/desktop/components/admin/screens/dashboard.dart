import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/desktop/widgets/custom_container.dart';
import 'package:studify/desktop/widgets/responsive_grid.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class DashboardAdminScreen extends StatelessWidget {
  const DashboardAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Example list of containers
    final List<Widget> containers2 = [
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              'Attendance Overview',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Teachers Attendance In percentage',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '92%',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Teachers Attendance In percentage',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '92%',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Total Teachers Today',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '399',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Total Students Today',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '399',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomText(
              'Attendance History',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        'Students',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      CustomizableCard(
                        leftIconPath: 'assets/images/arrow_in.svg',
                        // isGradient: true,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        centerText1: 'Micheal James',
                        centerTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        centerText2: 'Checkd Iin',
                        centerTextStyle2: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.green,
                        ),
                        rightText1: '4:00',
                        rightTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        rightText2: 'On Time',
                        rightTextStyle2: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 10),
                        isRight: true,
                        leftIconBackgroundColor: Colors.red.shade600,
                        leftIconSize: screenWidth < 380 ? 30.0 : 30.0,
                        padding3: screenWidth < 380 ? 5 : 10,
                        padding: screenWidth < 380 ? 10 : 10,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomizableCard(
                        leftIconPath: 'assets/images/arrow_in.svg',
                        // isGradient: true,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        centerText1: 'Micheal James',
                        centerTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        centerText2: 'Checkd Iin',
                        centerTextStyle2: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.green,
                        ),
                        rightText1: '4:00',
                        rightTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        rightText2: 'On Time',
                        rightTextStyle2: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 10),
                        isRight: true,
                        leftIconBackgroundColor: Colors.red.shade600,
                        leftIconSize: screenWidth < 380 ? 30.0 : 30.0,
                        padding3: screenWidth < 380 ? 5 : 10,
                        padding: screenWidth < 380 ? 10 : 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        'Teachers',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      CustomizableCard(
                        leftIconPath: 'assets/images/arrow_in.svg',
                        // isGradient: true,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        centerText1: 'Micheal James',
                        centerTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        centerText2: 'Checkd Iin',
                        centerTextStyle2: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.green,
                        ),
                        rightText1: '4:00',
                        rightTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        rightText2: 'On Time',
                        rightTextStyle2: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 10),
                        isRight: true,
                        leftIconBackgroundColor: Colors.red.shade600,
                        leftIconSize: screenWidth < 380 ? 30.0 : 30.0,
                        padding3: screenWidth < 380 ? 5 : 10,
                        padding: screenWidth < 380 ? 10 : 10,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomizableCard(
                        leftIconPath: 'assets/images/arrow_in.svg',
                        // isGradient: true,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        centerText1: 'Micheal James',
                        centerTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        centerText2: 'Checkd Iin',
                        centerTextStyle2: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.green,
                        ),
                        rightText1: '4:00',
                        rightTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        rightText2: 'On Time',
                        rightTextStyle2: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 10),
                        isRight: true,
                        leftIconBackgroundColor: Colors.red.shade600,
                        leftIconSize: screenWidth < 380 ? 30.0 : 30.0,
                        padding3: screenWidth < 380 ? 5 : 10,
                        padding: screenWidth < 380 ? 10 : 10,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              'Financial Overview',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomizableCard(
              isTextLeft: true,
              leftText: 'Students Paid',
              leftTextStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
              leftText2: 'Ada George Branch',
              leftTextStyle2: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
              rightIcon1: Icons.check_circle,
              rightIconColor1: const Color.fromARGB(255, 60, 232, 65),
              rightIconSize: 20,
              rightText2: '1294',
              rightTextStyle2: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              isRight: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              'Defaulters',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                            ClipOval(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                ),
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'images/arrow_in.svg',
                                  width: 5,
                                  height: 5,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          '17',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Space between cards
                Flexible(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              'Pending',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ClipOval(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFFF00FF), // Magenta
                                      Color(0xFF0000FF), // Blue
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'images/arrow_in.svg',
                                  width: 5,
                                  height: 5,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          '73',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              'Financial History',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                CustomizableCard(
                  isTextLeft: true,
                  leftText: '3h4df354hfg0a9ea34',
                  leftTextStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                  centerText1: 'Jun 19, 2024',
                  centerTextStyle1: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                  rightText2: 'Recieved',
                  rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 49, 251, 56)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isRight: true,
                  isSingleCenterText: true,
                  padding: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  isTextLeft: true,
                  leftText: '3h4df354hfg0a9ea34',
                  leftTextStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                  centerText1: 'Jun 19, 2024',
                  centerTextStyle1: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                  rightText2: 'Recieved',
                  rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 49, 251, 56)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isRight: true,
                  isSingleCenterText: true,
                  padding: 10,
                ),
                //   const SizedBox(
                //   height: 10,
                // ),
              ],
            )
          ],
        ),
      ),
    ];

    final List<Widget> containers = [
      const CustomContainer(
        firstText: '403',
        secondText: 'Total Number Of Teachers',
      ),
      const CustomContainer(
        firstText: '2,345',
        secondText: 'Total Number Of Students',
      ),
      const CustomContainer(
        firstText: '120',
        secondText: 'Total Number Of Classes',
      ),
      const CustomContainer(
        firstText: '326',
        secondText: 'Total Number Of Subjects',
      ),
    ];

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.grey.shade100,
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            ResponsiveGrid(items: containers),
            const SizedBox(
              height: 30,
            ),
            ResponsiveGrid(
              items: containers2,
              isType2: true,
            ),
          ],
        ),
      ),
    );
  }
}
