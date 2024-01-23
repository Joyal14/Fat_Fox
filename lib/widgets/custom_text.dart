import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final Icons? icons;

  const CustomText({
    Key? key,
    required this.label,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
