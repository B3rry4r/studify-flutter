import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/circular_container.dart';

class CustomizableCard extends StatefulWidget {
  final String leftIconPath;
  final Color leftIconBackgroundColor;
  final double leftIconSize;
  final bool isFilterLeftIcon;

  final String? leftText2;
  final TextStyle? leftTextStyle2;
  final String? leftText3;
  final TextStyle? leftTextStyle3;

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
  final bool isGradient3;
  final bool isStyleTwo;
  final bool isRight;
  final bool isDoublePadding;
  final bool isTextLeft;
  final bool isOverflowingText;
  final String? leftText;
  final TextStyle? leftTextStyle;
  final Function()? passedFunction;
  final bool hasDropdown;
  final bool isSingleCenterText;
  final BoxDecoration? circularContentDecoration;
  final int unUsedId;

  const CustomizableCard({
    super.key,
    this.leftIconPath = '',
    this.isFilterLeftIcon = false,
    this.passedFunction,
    this.hasDropdown = false,
    this.leftIconBackgroundColor = Colors.white,
    this.leftIconSize = 60.0,
    this.leftText2,
    this.leftTextStyle2,
    this.unUsedId = 2,
    this.leftText3,
    this.leftTextStyle3,
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
    this.isGradient3 = false,
    this.isStyleTwo = false,
    this.isRight = false,
    this.isDoublePadding = false,
    this.isTextLeft = false,
    this.isOverflowingText = false,
    this.isSingleCenterText = false,
    this.circularContentDecoration,
  });

  @override
  CustomizableCardState createState() => CustomizableCardState();
}

class CustomizableCardState extends State<CustomizableCard>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (widget.leftText != null)
                                      Text(widget.leftText!,
                                          style: widget.leftTextStyle),
                                    if (widget.leftText2 != null)
                                      Text(
                                        widget.leftText2!,
                                        style: widget.leftTextStyle2,
                                      ),
                                    if (widget.leftText3 != null)
                                      Text(
                                        widget.leftText3!,
                                        style: widget.leftTextStyle3,
                                      ),
                                  ],
                                )
                              : ClipOval(
                                  child: Container(
                                    padding: const EdgeInsets.all(1),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFFF00FF), // Magenta
                                          Color(0xFF0000FF), // Blue
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: CircularContainer(
                                      svgPath: widget.leftIconPath,
                                      svgExists: true,
                                      gradientExists: widget.isGradient,
                                      // filter: widget.isRight,
                                      padding: widget.padding3,
                                      backgroundColor:
                                          widget.leftIconBackgroundColor,
                                      width: widget.leftIconSize,
                                      height: widget.leftIconSize,
                                    ),
                                  ),
                                ),
                          const SizedBox(width: 10),
                          widget.isSingleCenterText
                              ? Flexible(
                                  flex: 1,
                                  child: Container(),
                                )
                              : Flexible(
                                  flex: widget.isTextLeft ? 1 : 0,
                                  child: Container(),
                                ),
                          widget.isOverflowingText
                              ? Container(
                                  width: screenWidth < 380 ? 200 : 250,
                                  child: Column(
                                    crossAxisAlignment:
                                        widget.isSingleCenterText
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      if (widget.centerText1 != null)
                                        Text(
                                          widget.centerText1!,
                                          style: widget.centerTextStyle1,
                                          maxLines: 1,
                                        ),
                                      if (widget.centerText2 != null)
                                        Text(
                                          widget.centerText2!,
                                          style: widget.centerTextStyle2,
                                          maxLines: 1,
                                        ),
                                      if (widget.centerText3 != null)
                                        Text(
                                          widget.centerText3!,
                                          style: widget.centerTextStyle3,
                                          maxLines: 1,
                                        ),
                                    ],
                                  ),
                                )
                              : Column(
                                  crossAxisAlignment: widget.isSingleCenterText
                                      ? CrossAxisAlignment.center
                                      : CrossAxisAlignment.start,
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
                          widget.isSingleCenterText
                              ? Flexible(
                                  flex: 1,
                                  child: Container(),
                                )
                              : Flexible(
                                  flex: widget.isTextLeft ? 0 : 1,
                                  child: Container(
                                      // width: 5,
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
                        widget.isTextLeft
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (widget.leftText != null)
                                    Text(widget.leftText!,
                                        style: widget.leftTextStyle),
                                  if (widget.leftText2 != null)
                                    Text(
                                      widget.leftText2!,
                                      style: widget.leftTextStyle2,
                                    ),
                                  if (widget.leftText3 != null)
                                    Text(
                                      widget.leftText3!,
                                      style: widget.leftTextStyle3,
                                    ),
                                ],
                              )
                            : ClipOval(
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  decoration:
                                      widget.circularContentDecoration ??
                                          const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFF00FF), // Magenta
                                                Color(0xFF0000FF), // Blue
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                          ),
                                  child: CircularContainer(
                                    svgPath: widget.leftIconPath,
                                    filter: widget.isFilterLeftIcon,
                                    svgExists: true,
                                    gradientExists: widget.isGradient,
                                    // filter: widget.isRight,
                                    padding: widget.padding3,
                                    backgroundColor:
                                        widget.leftIconBackgroundColor,
                                    width: widget.leftIconSize,
                                    height: widget.leftIconSize,
                                  ),
                                ),
                              ),
                        const SizedBox(width: 10),
                        widget.isSingleCenterText
                            ? Flexible(
                                flex: 1,
                                child: Container(),
                              )
                            : Flexible(
                                flex: widget.isTextLeft ? 1 : 0,
                                child: Container(),
                              ),
                        widget.isOverflowingText
                            ? Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        widget.isSingleCenterText
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      if (widget.centerText1 != null)
                                        Text(
                                          widget.centerText1!,
                                          style: widget.centerTextStyle1,
                                          maxLines: 1,
                                        ),
                                      if (widget.centerText2 != null)
                                        Text(
                                          widget.centerText2!,
                                          style: widget.centerTextStyle2,
                                          maxLines: 1,
                                        ),
                                      if (widget.centerText3 != null)
                                        Text(
                                          widget.centerText3!,
                                          style: widget.centerTextStyle3,
                                          maxLines: 1,
                                        ),
                                    ],
                                  ),
                                ),
                              )
                            : Column(
                                crossAxisAlignment: widget.isSingleCenterText
                                    ? CrossAxisAlignment.center
                                    : CrossAxisAlignment.start,
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
                        widget.isOverflowingText
                            ? const SizedBox(
                                width: 20,
                              )
                            : widget.isSingleCenterText
                                ? Flexible(
                                    flex: 1,
                                    child: Container(),
                                  )
                                : Flexible(
                                    flex: widget.isTextLeft ? 0 : 1,
                                    child: Container(
                                        // width: 5,
                                        ),
                                  ),
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
