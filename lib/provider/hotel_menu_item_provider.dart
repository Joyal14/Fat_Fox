import 'package:fatfox_app/provider/hotel_menu_provider.dart';
import 'package:fatfox_app/provider/select_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HotelMenuCard extends StatelessWidget {
  const HotelMenuCard({
    Key? key,
    required this.images,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String images;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HotelMenuProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SelectItemsList(),
        ),
      ],
      child: HotelMenuCard(
        images: images,
        title: title,
        price: price,
      ),
    );
  }
}
