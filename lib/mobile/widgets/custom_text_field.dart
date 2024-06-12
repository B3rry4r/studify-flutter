import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final EdgeInsets? padding;
  final double? height;
  final int? maxlines;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.decoration,
    this.textStyle,
    this.hintTextStyle,
    this.padding,
    this.height,
    this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    final adjustedPadding = maxlines != null && maxlines! > 1
        ? const EdgeInsets.all(2)
        : padding ?? const EdgeInsets.fromLTRB(5, 12, 5, 0);

    return Container(
      padding: adjustedPadding,
      height: height ?? (maxlines == null || maxlines == 1 ? 40 : null),
      width: double.infinity,
      decoration: decoration ??
          BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(40),
          ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        cursorHeight: 20,
        maxLines: maxlines ?? 1,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle ??
              const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0),
              width: 0.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0),
              width: 0.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0),
              width: 0.0,
            ),
          ),
        ),
        style: textStyle ?? const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
