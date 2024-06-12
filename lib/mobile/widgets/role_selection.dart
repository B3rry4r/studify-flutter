import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String hint;
  final ValueChanged<String?> onChanged;
  final bool isStyleTwo;
  final BorderRadius borderRadius;
  final Gradient gradient;
  final double padding;
  final bool isPadding;
  final TextStyle? style;
  final double? height;
  final BoxDecoration? decoration;
  final bool isBlackFontColor;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.hint,
    required this.onChanged,
    this.style,
    this.padding = 0,
    this.height,
    this.isPadding = false,
    this.isStyleTwo = false,
    this.isBlackFontColor = false,
    this.decoration,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
    this.gradient = const LinearGradient(
      colors: [
        Color(0xFFFF00FF), // Magenta
        Color(0xFF0000FF), // Blue
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return isStyleTwo
        ? Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              gradient: gradient,
            ),
            child: height != 0
                ? Container(
                    height: height,
                    width: double.infinity,
                    padding: isPadding
                        ? EdgeInsets.all(padding)
                        : EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: screenWidth < 380 ? 5 : 10),
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value,
                        hint: Text(
                          hint,
                          style: style ??
                              TextStyle(
                                color: Colors.black,
                                fontSize: screenWidth < 380 ? 13 : 16,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                        onChanged: onChanged,
                        items: items.map((String role) {
                          return DropdownMenuItem<String>(
                            value: role,
                            child: Text(
                              role,
                              style: style ??
                                  TextStyle(
                                    fontSize: screenWidth < 380 ? 13 : 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                            ),
                          );
                        }).toList(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        dropdownColor: Colors.white.withOpacity(0.9),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                          size: screenWidth < 380 ? 12 : 14,
                        ),
                        isExpanded: true,
                      ),
                    ),
                  )
                : Container(
                    width: double.infinity,
                    padding: isPadding
                        ? EdgeInsets.all(padding)
                        : EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: screenWidth < 380 ? 5 : 10),
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value,
                        hint: Text(
                          hint,
                          style: style ??
                              TextStyle(
                                color: Colors.black,
                                fontSize: screenWidth < 380 ? 13 : 16,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                        onChanged: onChanged,
                        items: items.map((String role) {
                          return DropdownMenuItem<String>(
                            value: role,
                            child: Text(
                              role,
                              style: style ??
                                  TextStyle(
                                    fontSize: screenWidth < 380 ? 13 : 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                            ),
                          );
                        }).toList(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        dropdownColor: Colors.white.withOpacity(0.9),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                          size: screenWidth < 380 ? 12 : 14,
                        ),
                        isExpanded: true,
                      ),
                    ),
                  ),
          )
        : Container(
            height: screenWidth < 380 ? 30 : 40,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: decoration ??
                BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(40),
                ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                hint: Text(
                  hint,
                  style: TextStyle(
                    color: isBlackFontColor ? Colors.black : Colors.white,
                    fontSize: screenWidth < 380 ? 10 : 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onChanged: onChanged,
                items: items.map((String role) {
                  return DropdownMenuItem<String>(
                    value: role,
                    child: Text(
                      role,
                      style: TextStyle(
                          fontSize: screenWidth < 380 ? 10 : 12,
                          // color: isBlackFontColor ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  );
                }).toList(),
                style: TextStyle(
                  color: isBlackFontColor ? Colors.black : Colors.white,
                  fontSize: 16,
                ),
                dropdownColor: isBlackFontColor
                    ? Colors.white
                    : Colors.black.withOpacity(0.7),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: isBlackFontColor ? Colors.black : Colors.white,
                  size: screenWidth < 380 ? 12 : 14,
                ),
                isExpanded: true,
              ),
            ),
          );
  }
}
