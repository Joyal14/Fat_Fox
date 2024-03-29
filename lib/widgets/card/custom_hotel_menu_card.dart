import 'package:fatfox_app/widgets/card/custom_hotel_menu_card_list.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String title;
  final String images;
  final String price;

  const HotelCard({
    required this.title,
    required this.images,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build");
    return HotelMenuCard(images: images, title: title, price: price);
  }
}
