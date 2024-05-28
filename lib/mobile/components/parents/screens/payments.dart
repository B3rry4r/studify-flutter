import 'package:flutter/material.dart';
import 'package:studify/mobile/components/parents/screens/paymet_history.dart';
import 'package:studify/mobile/components/parents/utils/students_data.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card.dart';
import 'package:studify/mobile/widgets/role_selection.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? selectedChild;
  final List<String> namesOfChildren = [
    'Micheal',
    'Rachel',
  ];
  String? selectedTitle;
  final List<String> list1 = [
    'Purchase Textbook',
    'Pay Fees',
    'Purchase New Uniform ',
  ];
  String? selectedSubTitle;
  final List<String> list2 = [
    'Mathematics',
    'English',
  ];

  void _navToPaymentHistory() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PaymentHistoryScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextRow(
                      leftText: 'Payments',
                      isLeftText: false,
                    ),
                    CustomDropdown(
                      value: selectedChild,
                      items: namesOfChildren,
                      isStyleTwo: true,
                      hint: 'Select Child',
                      onChanged: (value) {
                        setState(() {
                          selectedChild = value;
                        });
                      },
                    ),
                    CustomDropdown(
                      value: selectedTitle,
                      items: list1,
                      isStyleTwo: true,
                      hint: 'Select Child',
                      onChanged: (value) {
                        setState(() {
                          selectedTitle = value;
                        });
                      },
                    ),
                    CustomDropdown(
                      value: selectedSubTitle,
                      items: list2,
                      isStyleTwo: true,
                      hint: 'Select Child',
                      onChanged: (value) {
                        setState(() {
                          selectedSubTitle = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomizableContentCard(
                      rows: paymentMmockData,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextRow(
                      leftText: 'Payment History',
                      passedFunction: _navToPaymentHistory,
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
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomizableCard(
                leftIconSize: screenWidth < 380 ? 30.0 : 60.0,
                padding3: screenWidth < 380 ? 10 : 20,
                leftIconPath: 'assets/images/arrow_right.svg',
                centerText1: 'Swipe to Make Payment',
                isGradient: false,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                padding: 10.0,
                isStyleTwo: true,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                centerTextStyle1: const TextStyle(),
                leftIconBackgroundColor: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
