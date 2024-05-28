import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CustomTextRow extends StatelessWidget {
  final String leftText;
  final String? function;
  final Function()? passedFunction;
  final bool isLeftText;
  final bool isStyleTwo;
  final String rightText;
  final bool isBold;

  const CustomTextRow({
    super.key,
    required this.leftText,
    this.function,
    this.rightText = '',
    this.passedFunction,
    this.isLeftText = true,
    this.isStyleTwo = false,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: isStyleTwo
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  leftText,
                  fontWeight: isBold ? FontWeight.w500 : FontWeight.w300,
                  fontSize: screenWidth < 380 ? 11 : 13,
                ),
                CustomText(
                  rightText,
                  fontWeight: isBold ? FontWeight.w500 : FontWeight.w300,
                  fontSize: screenWidth < 380 ? 11 : 13,
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  leftText,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth < 380 ? 15 : 18,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: passedFunction,
                  child: CustomText(
                    isLeftText ? 'See all' : '',
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth < 380 ? 12 : 14,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
    );
  }
}
