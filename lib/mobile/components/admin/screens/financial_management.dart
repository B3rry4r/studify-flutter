import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class FinancialManagement extends StatelessWidget {
  const FinancialManagement({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Financial Management',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
              const CustomTextRow(
                leftText: 'Overview',
                isLeftText: false,
              ),
              SizedBox(
                height: screenWidth < 380 ? 20 : 30,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/arrow_in.svg',
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Students Paid',
                centerTextStyle1: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth < 380 ? 15 : 18,
                  color: Colors.green,
                ),
                centerText2: 'Ada George Branch',
                centerTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 10 : 13,
                  color: Colors.green,
                ),
                rightText1: '400',
                rightTextStyle1: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth < 380 ? 14 : 16,
                  color: Colors.green,
                ),
                isRight: true,
                isGradient3: false,
                leftIconBackgroundColor: Colors.green,
                isGradient: true,
                leftIconSize: 50.0,
                padding3: 18.0,
                padding: screenWidth < 380 ? 20 : 30,
              ),
              SizedBox(
                height: screenWidth < 380 ? 20 : 30,
              ),
              const Row(
                children: [
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '17',
                      text2: 'Defaulters',
                      svgPath: 'images/arrow_in.svg',
                    ),
                  ),
                  SizedBox(width: 16), // Space between cards
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '73',
                      text2: 'Pending',
                      svgPath: 'images/arrow_in.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth < 380 ? 30 : 40,
              ),
              const CustomTextRow(
                leftText: 'Fee Collection Status',
              ),
              SizedBox(
                height: screenWidth < 380 ? 2 : 4,
              ),
              CustomizableCard(
                leftText: 'Total Collected',
                rightText1: '\$20,000,000',
                leftTextStyle: TextStyle(
                  fontSize: screenWidth < 380 ? 10 : 13,
                  fontWeight: FontWeight.w300,
                ),
                leftText2: 'Pending',
                leftTextStyle2: TextStyle(
                  fontSize: screenWidth < 380 ? 10 : 13,
                  fontWeight: FontWeight.w300,
                ),
                leftText3: 'Overdue',
                leftTextStyle3: TextStyle(
                    fontSize: screenWidth < 380 ? 10 : 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.red),
                rightText2: '\$1,350,000',
                rightTextStyle2: TextStyle(
                  fontSize: screenWidth < 380 ? 10 : 13,
                  fontWeight: FontWeight.w500,
                ),
                rightTextStyle3: TextStyle(
                    fontSize: screenWidth < 380 ? 10 : 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
                rightText3: '\$1,350,000',
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
                height: screenWidth < 380 ? 15 : 20,
              ),
              const CustomTextRow(
                leftText: 'Payment Status',
              ),
              SizedBox(
                height: screenWidth < 380 ? 10 : 15,
              ),
              CustomizableCard(
                isTextLeft: true,
                leftText: 'New Uniform',
                leftText2: '4h64efdsheb34be3b',
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
                leftText2: '4h64efdsheb34be3b',
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
                leftText2: '4h64efdsheb34be3b',
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
                leftText2: '4h64efdsheb34be3b',
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
      ),
    );
  }
}
