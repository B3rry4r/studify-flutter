import 'package:flutter/material.dart';
import 'package:studify/mobile/components/parents/utils/students_data.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card.dart';

class HomeParents extends StatelessWidget {
  const HomeParents({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomTextRow(
              leftText: 'Child Overview',
              isLeftText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomizableCard(
              leftIconSize: screenWidth < 380 ? 37.0 : 50.0,
              padding3: screenWidth < 380 ? 10 : 15,
              padding: screenWidth < 380 ? 15 : 20,
              leftIconPath: 'assets/images/hat_G.svg',
              // padding: 20,
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                  const Color(0xFF0000FF).withOpacity(0.7), // Blue
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              centerText1: 'Micheal James',
              centerTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              centerText2: 'Currently In School',
              centerTextStyle2: TextStyle(
                fontSize: screenWidth < 380 ? 10 : 12,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              rightIcon2: Icons.keyboard_arrow_down_outlined,
              rightIconColor2: Colors.white,
              expandedContent: CustomizableContentCard(
                rows: rowsParents1,
              ),
              isRight: true,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomizableCard(
              leftIconSize: screenWidth < 380 ? 37.0 : 50.0,
              padding3: screenWidth < 380 ? 10 : 15,
              padding: screenWidth < 380 ? 15 : 20,
              leftIconPath: 'assets/images/hat_G.svg',
              // padding: 20,
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                  const Color(0xFF0000FF).withOpacity(0.7), // Blue
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              centerText1: 'Racheal James',
              centerTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              centerText2: 'Currently In School',
              centerTextStyle2: TextStyle(
                fontSize: screenWidth < 380 ? 10 : 12,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              rightIcon2: Icons.keyboard_arrow_down_outlined,
              rightIconColor2: Colors.white,
              expandedContent: CustomizableContentCard(
                rows: rowsParents1,
              ),
              isRight: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextRow(leftText: 'Attendance Updates'),
            const SizedBox(
              height: 15,
            ),
            CustomizableCard(
              leftIconPath: 'assets/images/arrow_in.svg',
              // isGradient: true,
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              centerText1: 'Micheal James',
              centerTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 10 : 15,
              ),
              centerText2: 'Check In',
              centerTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 10 : 12,
              ),
              rightText1: '8:00',
              rightTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 12 : 16,
              ),
              rightText2: 'Early 30 minutes',
              rightTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 9 : 12,
                color: Colors.black,
              ),
              isRight: true,
              leftIconBackgroundColor: Colors.blueAccent,
              leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
              padding3: screenWidth < 380 ? 10 : 20,
              padding: screenWidth < 380 ? 15 : 20,
            ),
            SizedBox(
              height: screenWidth < 380 ? 15 : 20,
            ),
            CustomizableCard(
              leftIconPath: 'assets/images/arrow_in.svg',
              // isGradient: true,
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              centerText1: 'Micheal James',
              centerTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 10 : 15,
              ),
              centerText2: 'Check In',
              centerTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 10 : 12,
              ),
              rightText1: '8:00',
              rightTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 12 : 16,
              ),
              rightText2: 'Early 30 minutes',
              rightTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 9 : 12,
                color: Colors.black,
              ),
              isRight: true,
              leftIconBackgroundColor: Colors.blueAccent,
              leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
              padding3: screenWidth < 380 ? 10 : 20,
              padding: screenWidth < 380 ? 15 : 20,
            ),
            SizedBox(
              height: screenWidth < 380 ? 20 : 20,
            ),
            CustomizableCard(
              leftIconPath: 'assets/images/arrow_out.svg',
              // isGradient: true,
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              centerText1: 'Racheal James',
              centerTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 10 : 15,
              ),
              centerText2: 'Check In',
              centerTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 10 : 12,
              ),
              rightText1: '8:00',
              rightTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 12 : 16,
              ),
              rightText2: 'Early 30 minutes',
              rightTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 9 : 12,
                color: Colors.black,
              ),
              isRight: true,
              leftIconBackgroundColor: Colors.red,
              leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
              padding3: screenWidth < 380 ? 10 : 20,
              padding: screenWidth < 380 ? 15 : 20,
            ),
            SizedBox(
              height: screenWidth < 380 ? 20 : 20,
            ),
            CustomizableCard(
              leftIconPath: 'assets/images/arrow_out.svg',
              // isGradient: true,
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              centerText1: 'Micheal James',
              centerTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 10 : 15,
              ),
              centerText2: 'Check In',
              centerTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 10 : 12,
              ),
              rightText1: '8:00',
              rightTextStyle1: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth < 380 ? 12 : 16,
              ),
              rightText2: 'Early 30 minutes',
              rightTextStyle2: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth < 380 ? 9 : 12,
                color: Colors.black,
              ),
              isRight: true,
              leftIconBackgroundColor: Colors.red,
              leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
              padding3: screenWidth < 380 ? 10 : 20,
              padding: screenWidth < 380 ? 15 : 20,
            ),
            SizedBox(
              height: screenWidth < 380 ? 20 : 20,
            ),
            const CustomTextRow(leftText: 'Updates'),
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
                          const Color(0xFFFF00FF).withOpacity(0.25), // Magenta
                          const Color(0xFF0000FF).withOpacity(0.25), // Blue
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
              height: 20,
            ),
            const CustomTextRow(
              leftText: 'Payment History',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomizableCard(
              isTextLeft: true,
              leftText: 'New Uniform',
              leftText2: 'Micheals Uniform',
              leftText3: '\$50,000',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 16,
                fontWeight: FontWeight.w300,
              ),
              leftTextStyle2: TextStyle(
                fontSize: screenWidth < 380 ? 10 : 12,
                fontWeight: FontWeight.w300,
              ),
              leftTextStyle3: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 14,
                fontWeight: FontWeight.w300,
              ),
              rightText1: 'Jun 19 2024',
              rightTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 16,
                fontWeight: FontWeight.w300,
              ),
              rightIcon1: Icons.check_circle,
              rightIconColor1: Colors.green,
              rightIconSize: screenWidth < 380 ? 10 : 15,
              rightText3: 'Successful',
              rightTextStyle3: TextStyle(
                  fontSize: screenWidth < 380 ? 11 : 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.green),
              isStyleTwo: true,
              isGradient2: true,
              isGradient: false,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              borderRadius: BorderRadius.circular(0),
              padding: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomizableCard(
              isTextLeft: true,
              leftText: 'School Fees',
              leftText2: 'Micheals Fees',
              leftText3: '\$50,000',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 16,
                fontWeight: FontWeight.w300,
              ),
              leftTextStyle2: TextStyle(
                fontSize: screenWidth < 380 ? 10 : 12,
                fontWeight: FontWeight.w300,
              ),
              leftTextStyle3: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 14,
                fontWeight: FontWeight.w300,
              ),
              rightText1: 'Jun 19 2024',
              rightTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 16,
                fontWeight: FontWeight.w300,
              ),
              rightIcon1: Icons.check_circle,
              rightIconColor1: Colors.green,
              rightIconSize: screenWidth < 380 ? 10 : 15,
              rightText3: 'Successful',
              rightTextStyle3: TextStyle(
                  fontSize: screenWidth < 380 ? 11 : 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.green),
              isStyleTwo: true,
              isGradient2: true,
              isGradient: false,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              borderRadius: BorderRadius.circular(0),
              padding: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomizableCard(
              isTextLeft: true,
              leftText: 'New Uniform',
              leftText2: 'Micheals Uniform',
              leftText3: '\$50,000',
              leftTextStyle: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 16,
                fontWeight: FontWeight.w300,
              ),
              leftTextStyle2: TextStyle(
                fontSize: screenWidth < 380 ? 10 : 12,
                fontWeight: FontWeight.w300,
              ),
              leftTextStyle3: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 14,
                fontWeight: FontWeight.w300,
              ),
              rightText1: 'Jun 19 2024',
              rightTextStyle1: TextStyle(
                fontSize: screenWidth < 380 ? 12 : 16,
                fontWeight: FontWeight.w300,
              ),
              rightIcon1: Icons.check_circle,
              rightIconColor1: Colors.green,
              rightIconSize: screenWidth < 380 ? 10 : 15,
              rightText3: 'Successful',
              rightTextStyle3: TextStyle(
                  fontSize: screenWidth < 380 ? 11 : 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.green),
              isStyleTwo: true,
              isGradient2: true,
              isGradient: false,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              borderRadius: BorderRadius.circular(0),
              padding: 10,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
