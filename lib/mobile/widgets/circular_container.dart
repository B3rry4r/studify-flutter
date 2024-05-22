import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  final String svgPath;
  final Color? backgroundColor;
  final double padding;
  final double width;
  final double height;
  final double? svgWidth;
  final double? svgHeight;
  final bool filter;
  final bool svgExists;
  final Widget widgetIsNotNull;
  final bool gradientExists;

  const CircularContainer({
    super.key,
    this.svgPath = '',
    this.backgroundColor,
    required this.width,
    required this.height,
    this.widgetIsNotNull = const SizedBox(),
    this.filter = false,
    this.svgExists = false,
    this.gradientExists = false,
    this.padding = 15.0,
    this.svgWidth,
    this.svgHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        decoration: gradientExists
            ? BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                    const Color(0xFF0000FF).withOpacity(0.7), // Blue
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              )
            : BoxDecoration(
                color: backgroundColor,
              ),
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: svgExists == true
              ? SvgPicture.asset(
                  svgPath,
                  height: svgHeight,
                  width: svgWidth,
                  colorFilter: filter
                      ? const ColorFilter.mode(
                          Color.fromARGB(255, 255, 255, 255), BlendMode.srcIn)
                      : null,
                )
              : widgetIsNotNull,
        ),
      ),
    );
  }
}
