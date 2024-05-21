import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CustomTextRow extends StatelessWidget {
  final String leftText;
  final String? function;

  const CustomTextRow({super.key, required this.leftText, this.function});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          leftText,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        const CustomText(
          'See all',
          fontWeight: FontWeight.w100,
          fontSize: 15,
          color: Colors.blue,
          // decoration: TextDecoration.underline,
        )
      ],
    );
  }
}
