import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String hint;
  final ValueChanged<String?> onChanged;
  final bool isStyleTwo;
  final BorderRadius borderRadius;
  final Gradient gradient;
  // final BoxDecoration? decoration;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.hint,
    required this.onChanged,
    this.isStyleTwo = false,
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
            child: Container(
              // height: screenWidth < 380 ? 30 : 40,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: 15, vertical: screenWidth < 380 ? 5 : 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value,
                  hint: Text(
                    hint,
                    style: TextStyle(
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
                        style: TextStyle(
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
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(40),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                hint: Text(
                  hint,
                  style: TextStyle(
                    color: Colors.white,
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
                          fontWeight: FontWeight.w300),
                    ),
                  );
                }).toList(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                dropdownColor: Colors.black.withOpacity(0.7),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                  size: screenWidth < 380 ? 12 : 14,
                ),
                isExpanded: true,
              ),
            ),
          );
  }
}
