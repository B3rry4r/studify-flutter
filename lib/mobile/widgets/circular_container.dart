import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  final String svgPath;
  final Color backgroundColor;
  final double width;
  final double height;
  final bool filter;

  const CircularContainer({
    super.key,
    required this.svgPath,
    required this.backgroundColor,
    required this.width,
    required this.height,
    this.filter = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: backgroundColor,
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(
            svgPath,
            colorFilter: filter
                ? const ColorFilter.mode(
                    Color.fromARGB(255, 255, 255, 255), BlendMode.srcIn)
                : null,
          ),
        ),
      ),
    );
  }
}
