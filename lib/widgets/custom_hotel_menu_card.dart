import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/custom_hotel_menu_card_list.dart';

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
    return HotelMenuCard(images: images, title: title, price: price);
  }
}
