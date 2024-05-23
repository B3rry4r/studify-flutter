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
  final double padding2;
  final double padding3;
  final BorderRadius borderRadius;
  final Gradient gradient;
  final BoxDecoration? decoration;
  final double? rightIconSize;
  final Widget? expandedContent;
  final bool isGradient;
  final bool isGradient2;
  final bool isStyleTwo;
  final bool isRight;
  final bool isDoublePadding;
  final bool isTextLeft;
  final String? leftText;
  final TextStyle? leftTextStyle;
  final Function()? passedFunction;
  final bool hasDropdown;

  const CustomizableCard({
    super.key,
    this.leftIconPath = '',
    this.passedFunction,
    this.hasDropdown = false,
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
    this.padding2 = 15.0,
    this.padding3 = 20.0,
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
    this.rightIconSize,
    this.leftText,
    this.leftTextStyle,
    this.isGradient = true,
    this.isGradient2 = true,
    this.isStyleTwo = false,
    this.isRight = false,
    this.isDoublePadding = false,
    this.isTextLeft = false,
  });

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
          child: widget.isStyleTwo
              ? Container(
                  padding: const EdgeInsets.all(1),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: widget.borderRadius,
                    gradient: widget.isGradient2 ? widget.gradient : null,
                  ),
                  child: GestureDetector(
                    onTap: widget.passedFunction,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: widget.padding,
                          vertical: widget.isDoublePadding
                              ? widget.padding2
                              : widget.padding),
                      decoration: widget.decoration ??
                          BoxDecoration(
                            borderRadius: widget.borderRadius,
                            gradient:
                                widget.isGradient ? widget.gradient : null,
                          ),
                      child: Row(
                        children: [
                          widget.isTextLeft
                              ? Text(
                                  widget.leftText!,
                                  style: widget.leftTextStyle,
                                )
                              : CircularContainer(
                                  svgPath: widget.leftIconPath,
                                  svgExists: true,
                                  gradientExists: widget.isGradient,
                                  // filter: widget.isRight,
                                  padding: widget.padding2,
                                  backgroundColor:
                                      widget.leftIconBackgroundColor,
                                  width: widget.leftIconSize,
                                  height: widget.leftIconSize,
                                ),
                          const SizedBox(width: 10),
                          Flexible(
                            flex: widget.isTextLeft ? 1 : 0,
                            child: Container(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (widget.centerText1 != null)
                                Text(widget.centerText1!,
                                    style: widget.centerTextStyle1),
                              if (widget.centerText2 != null)
                                Text(widget.centerText2!,
                                    style: widget.centerTextStyle2),
                              if (widget.centerText3 != null)
                                Text(widget.centerText3!,
                                    style: widget.centerTextStyle3),
                            ],
                          ),
                          Flexible(
                            flex: widget.isTextLeft ? 0 : 1,
                            child: Container(
                              width: 5,
                            ),
                          ),
                          Column(
                            children: [
                              if (widget.rightText1 != null)
                                Text(widget.rightText1!,
                                    style: widget.rightTextStyle1),
                              if (widget.rightIcon1 != null)
                                Icon(widget.rightIcon1,
                                    size: widget.rightIconSize,
                                    color: widget.rightIconColor1),
                              if (widget.rightText2 != null)
                                Text(widget.rightText2!,
                                    style: widget.rightTextStyle2),
                              if (widget.rightIcon2 != null)
                                Icon(widget.rightIcon2,
                                    size: widget.rightIconSize,
                                    color: widget.rightIconColor2),
                              if (widget.rightText3 != null)
                                Text(widget.rightText3!,
                                    style: widget.rightTextStyle3),
                              if (widget.rightIcon3 != null)
                                Icon(widget.rightIcon3,
                                    size: widget.rightIconSize,
                                    color: widget.rightIconColor3),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: widget.passedFunction,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(widget.padding),
                    decoration: widget.decoration ??
                        BoxDecoration(
                          borderRadius: widget.borderRadius,
                          gradient: widget.isGradient ? widget.gradient : null,
                        ),
                    child: Row(
                      children: [
                        CircularContainer(
                          svgPath: widget.leftIconPath,
                          svgExists: true,
                          backgroundColor: widget.leftIconBackgroundColor,
                          width: widget.leftIconSize,
                          height: widget.leftIconSize,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.centerText1 != null)
                              Text(widget.centerText1!,
                                  style: widget.centerTextStyle1),
                            if (widget.centerText2 != null)
                              Text(widget.centerText2!,
                                  style: widget.centerTextStyle2),
                            if (widget.centerText3 != null)
                              Text(widget.centerText3!,
                                  style: widget.centerTextStyle3),
                          ],
                        ),
                        Flexible(flex: 1, child: Container()),
                        widget.isRight
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  if (widget.rightText1 != null)
                                    Text(widget.rightText1!,
                                        style: widget.rightTextStyle1),
                                  if (widget.rightIcon1 != null)
                                    Icon(widget.rightIcon1,
                                        size: widget.rightIconSize,
                                        color: widget.rightIconColor1),
                                  if (widget.rightText2 != null)
                                    Text(widget.rightText2!,
                                        style: widget.rightTextStyle2),
                                  if (widget.rightIcon2 != null)
                                    Icon(widget.rightIcon2,
                                        size: widget.rightIconSize,
                                        color: widget.rightIconColor2),
                                  if (widget.rightText3 != null)
                                    Text(widget.rightText3!,
                                        style: widget.rightTextStyle3),
                                  if (widget.rightIcon3 != null)
                                    Icon(widget.rightIcon3,
                                        size: widget.rightIconSize,
                                        color: widget.rightIconColor3),
                                ],
                              )
                            : Column(
                                children: [
                                  if (widget.rightText1 != null)
                                    Text(widget.rightText1!,
                                        style: widget.rightTextStyle1),
                                  if (widget.rightIcon1 != null)
                                    Icon(widget.rightIcon1,
                                        size: widget.rightIconSize,
                                        color: widget.rightIconColor1),
                                  if (widget.rightText2 != null)
                                    Text(widget.rightText2!,
                                        style: widget.rightTextStyle2),
                                  if (widget.rightIcon2 != null)
                                    Icon(widget.rightIcon2,
                                        size: widget.rightIconSize,
                                        color: widget.rightIconColor2),
                                  if (widget.rightText3 != null)
                                    Text(widget.rightText3!,
                                        style: widget.rightTextStyle3),
                                  if (widget.rightIcon3 != null)
                                    Icon(widget.rightIcon3,
                                        size: widget.rightIconSize,
                                        color: widget.rightIconColor3),
                                ],
                              ),
                      ],
                    ),
                  ),
                ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          child: _isExpanded && widget.expandedContent != null
              ? widget.expandedContent!
              : Container(),
        ),
      ],
    );
  }
}
