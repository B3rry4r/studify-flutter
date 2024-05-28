import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Payment History',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
