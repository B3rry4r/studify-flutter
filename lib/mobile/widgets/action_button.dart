import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color color;

  const CustomActionButton(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      required this.backgroundColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: Colors.white.withOpacity(0.5), // Border color with opacity
          width: 1, // Border width
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: screenWidth < 380 ? 12 : 14,
          ),
        ),
      ),
    );
  }
}
