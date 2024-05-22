import 'package:flutter/material.dart';

class CustomizableContentCard extends StatelessWidget {
  final double padding;
  final double height;
  final BorderRadius borderRadius;
  final Gradient gradientBorder;
  final BoxDecoration? decoration;
  final List<Map<String, dynamic>> rows; // List of rows with text widget data

  const CustomizableContentCard({
    super.key,
    this.padding = 15.0,
    this.height = 0.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.gradientBorder = const LinearGradient(
      colors: [
        Color(0xFFFF00FF), // Magenta
        Color(0xFF0000FF), // Blue
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    this.decoration,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: gradientBorder,
      ),
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: decoration ??
            BoxDecoration(
              color: Colors.white,
              borderRadius: borderRadius,
            ),
        child: Column(
          children: rows.map((row) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (row.containsKey('text1'))
                    Text(row['text1']['value'], style: row['text1']['style']),
                  SizedBox(
                    height: height,
                  ),
                  if (row.containsKey('text2'))
                    Text(row['text2']['value'], style: row['text2']['style']),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
