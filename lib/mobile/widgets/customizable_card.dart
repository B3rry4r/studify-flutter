import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/circular_container.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class CustomizableCard extends StatefulWidget {
  final String leftIconPath;
  final Color leftIconBackgroundColor;
  final double leftIconSize;

  final String? centerText1;
  final TextStyle? centerTextStyle1;
  final String? centerText2;
  final TextStyle? centerTextStyle2;
  final String? centerText3;
  final TextStyle? centerTextStyle3;

  final String? rightText1;
  final TextStyle? rightTextStyle1;
  final IconData? rightIcon1;
  final Color? rightIconColor1;
  final String? rightText2;
  final TextStyle? rightTextStyle2;
  final IconData? rightIcon2;
  final Color? rightIconColor2;
  final String? rightText3;
  final TextStyle? rightTextStyle3;
  final IconData? rightIcon3;
  final Color? rightIconColor3;

  final double padding;
  final BorderRadius borderRadius;
  final Gradient gradient;
  final BoxDecoration? decoration;

  final Widget? expandedContent;

  const CustomizableCard({
    Key? key,
    required this.leftIconPath,
    this.leftIconBackgroundColor = Colors.white,
    this.leftIconSize = 60.0,
    this.centerText1,
    this.centerTextStyle1,
    this.centerText2,
    this.centerTextStyle2,
    this.centerText3,
    this.centerTextStyle3,
    this.rightText1,
    this.rightTextStyle1,
    this.rightIcon1,
    this.rightIconColor1,
    this.rightText2,
    this.rightTextStyle2,
    this.rightIcon2,
    this.rightIconColor2,
    this.rightText3,
    this.rightTextStyle3,
    this.rightIcon3,
    this.rightIconColor3,
    this.padding = 15.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.gradient = const LinearGradient(
      colors: [
        Color(0xFFFF00FF), // Magenta
        Color(0xFF0000FF), // Blue
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    this.decoration,
    this.expandedContent,
  }) : super(key: key);

  @override
  _CustomizableCardState createState() => _CustomizableCardState();
}

class _CustomizableCardState extends State<CustomizableCard>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleExpand,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(widget.padding),
            decoration: widget.decoration ??
                BoxDecoration(
                  borderRadius: widget.borderRadius,
                  gradient: widget.gradient,
                ),
            child: Row(
              children: [
                CircularContainer(
                  svgPath: widget.leftIconPath,
                  backgroundColor: widget.leftIconBackgroundColor,
                  width: widget.leftIconSize,
                  height: widget.leftIconSize,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.centerText1 != null)
                      Text(widget.centerText1!, style: widget.centerTextStyle1),
                    if (widget.centerText2 != null)
                      Text(widget.centerText2!, style: widget.centerTextStyle2),
                    if (widget.centerText3 != null)
                      Text(widget.centerText3!, style: widget.centerTextStyle3),
                  ],
                ),
                Flexible(flex: 1, child: Container()),
                Column(
                  children: [
                    if (widget.rightText1 != null)
                      Text(widget.rightText1!, style: widget.rightTextStyle1),
                    if (widget.rightIcon1 != null)
                      Icon(widget.rightIcon1, color: widget.rightIconColor1),
                    if (widget.rightText2 != null)
                      Text(widget.rightText2!, style: widget.rightTextStyle2),
                    if (widget.rightIcon2 != null)
                      Icon(widget.rightIcon2, color: widget.rightIconColor2),
                    if (widget.rightText3 != null)
                      Text(widget.rightText3!, style: widget.rightTextStyle3),
                    if (widget.rightIcon3 != null)
                      Icon(widget.rightIcon3, color: widget.rightIconColor3),
                  ],
                ),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut,
          child: _isExpanded && widget.expandedContent != null
              ? widget.expandedContent!
              : Container(),
        ),
      ],
    );
  }
}
