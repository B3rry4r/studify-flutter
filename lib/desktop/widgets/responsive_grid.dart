import 'package:flutter/material.dart';

class ResponsiveGrid extends StatelessWidget {
  final List<Widget> items;
  bool isType2;
  bool isType3;

  ResponsiveGrid({
    required this.items,
    super.key,
    this.isType2 = false,
    this.isType3 = false,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int columns;

    if (isType2) {
      if (screenWidth >= 1200) {
        columns = 2;
      } else {
        columns = 1;
      }
    } else if (isType3) {
      if (screenWidth >= 1200) {
        columns = 3;
      } else if (screenWidth >= 800) {
        columns = 2;
      } else {
        columns = 1;
      }
    } else {
      if (screenWidth >= 1200) {
        columns = 4;
      } else if (screenWidth >= 800) {
        columns = 3;
      } else {
        columns = 2;
      }
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,
        childAspectRatio: 1.5, // Adjust the aspect ratio as needed
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return items[index];
      },
    );
  }
}
