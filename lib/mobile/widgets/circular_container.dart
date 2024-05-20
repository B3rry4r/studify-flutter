import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaIcon extends StatelessWidget {
  final String svgPath;
  final Color backgroundColor;
  final double width;
  final double height;

  const SocialMediaIcon(
      {super.key,
      required this.svgPath,
      required this.backgroundColor,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: backgroundColor,
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            svgPath,
            colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 255, 255, 255), BlendMode.srcIn),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
