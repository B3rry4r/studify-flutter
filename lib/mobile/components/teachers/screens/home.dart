import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const CustomTextRow(
                        leftText: 'Updates',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: const Image(
                              image: AssetImage(
                                  '../../../../assets/updatesImg.png'),
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
                            top: 135,
                            left: 35,
                            child: CustomText(
                              'News From The School',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextRow(leftText: 'Quick Stats'),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomizableCard(
                        leftIconPath: '../../../../assets/hat_G.svg',
                        padding: 20,
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                            const Color(0xFF0000FF).withOpacity(0.7), // Blue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        centerText1: 'Number Of Classes Taught',
                        centerTextStyle1: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        centerText2: '2 Courses/Subjects',
                        centerTextStyle2: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                        rightText1: '5',
                        rightTextStyle1: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        rightIcon2: Icons.keyboard_arrow_down_outlined,
                        rightIconColor2: Colors.white,
                        expandedContent: Container(
                          width: double.infinity,
                          height: 200,
                          child: const Center(
                            child: Text('Working'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomizableCard(
                        leftIconPath: '../../../../assets/hat_G.svg',
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                            const Color(0xFF0000FF).withOpacity(0.7), // Blue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
