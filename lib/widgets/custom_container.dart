import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/single_text.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final Color bcolor;
  final String text;
  const CustomContainer({
    super.key,
    required this.bcolor,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: bcolor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(width: 5),
          CustomSingleTextWidget(
              label: text,
              color: Colors.white,
              size: 12,
              fontWeight: FontWeight.normal),
        ],
      ),
    );
  }
}
