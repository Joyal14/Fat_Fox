import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/single_text.dart';

class HotelMenuCard extends StatelessWidget {
  const HotelMenuCard({
    super.key,
    required this.images,
    required this.title,
    required this.price,
  });

  final String images;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color.fromRGBO(58, 58, 58, 1),
      child: SizedBox(
        height: 120, // Set your desired height
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  child: Image.asset(
                    images,
                    height: double.infinity,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10), // Adjust the spacing
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSingleTextWidget(
                      label: title,
                      color: Theme.of(context).colorScheme.primary,
                      size: 20,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 8),
                  CustomSingleTextWidget(
                      label: price,
                      color: Colors.white,
                      size: 15,
                      fontWeight: FontWeight.normal)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
