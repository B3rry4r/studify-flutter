import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final String firstText;
  final String secondText;

  const CustomContainer({
    required this.firstText,
    required this.secondText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFF00FF),
                        Color(0xFF0000FF),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/hat_G.svg',
                      height: 27,
                    ),
                  ),
                ),
                CustomText(
                  firstText,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomText(
            secondText,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
