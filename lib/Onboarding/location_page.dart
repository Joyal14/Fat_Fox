import 'package:fatfox_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/custom_button.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context).pop(); // Pop the current route
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              "image/Location.png",
              width: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
                label: "Hi nice to meet you !",
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.normal),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
                label: "Choose your location to find",
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal),
            const CustomText(
                label: "restaurants near you.",
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: CustomElevatedButton(
                  context: context,
                  label: "Allow Location",
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.primary),
            )
          ],
        ),
      ),
    );
  }
}
