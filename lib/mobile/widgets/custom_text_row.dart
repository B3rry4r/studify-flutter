import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CustomTextRow extends StatelessWidget {
  final String leftText;
  final String? function;
  final Function()? passedFunction;
  final bool isLeftText;

  const CustomTextRow({
    super.key,
    required this.leftText,
    this.function,
    this.passedFunction,
    this.isLeftText = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
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
            // decoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}
