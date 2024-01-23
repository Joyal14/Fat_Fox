import 'package:flutter/material.dart';

class CustomSingleTextWidget extends StatelessWidget {
  final String label;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const CustomSingleTextWidget(
      {super.key,
      required this.label,
      required this.color,
      required this.size,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
      textAlign: TextAlign.left,
    );
  }
}
