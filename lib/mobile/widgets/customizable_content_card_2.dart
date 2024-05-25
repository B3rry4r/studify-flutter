import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CustomizableCardBig extends StatelessWidget {
  final double width;
  final String svgPath;
  final String text1;
  final String text2;
  const CustomizableCardBig(
      {super.key,
      required this.width,
      this.svgPath = '/assets/images/arrow_in.svg',
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
      ),
      // height: 100,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularContainer(
            width: screenWidth < 370 ? 40 : 50,
            height: screenWidth < 370 ? 40 : 50,
            gradientExists: true,
            svgExists: true,
            filter: true,
            svgPath: svgPath,
            padding: screenWidth < 370 ? 12 : 17,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text1,
            fontSize: screenWidth < 370 ? 14 : 18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: screenWidth < 370 ? 0 : 10,
          ),
          CustomText(
            text2,
            fontSize: screenWidth < 370 ? 12 : 14,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
