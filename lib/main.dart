import 'package:fatfox_app/provider/hotel_menu_provider.dart';
import 'package:fatfox_app/provider/select_items_provider.dart';
import 'package:fatfox_app/splash.dart';

// import 'package:fatfox_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:fatfox_app/pages/location_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Splashscreen(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(251, 142, 21, 1),
            primary: const Color.fromRGBO(251, 142, 21, 1),
            secondary: const Color.fromRGBO(139, 104, 64, 1),
          ),
        ),
      ),
    );
  }
}
