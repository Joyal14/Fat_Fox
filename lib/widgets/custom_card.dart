import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 222, 185, 1),
              Color.fromRGBO(255, 191, 119, 1),
              Color.fromRGBO(251, 142, 21, 1),
              Color.fromRGBO(222, 132, 32, 1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    label: "GET 20% OFF",
                    color: Colors.black,
                    fontSize: 24.43,
                    fontWeight: FontWeight.normal,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        label: "Enjoy a 20% discount when placing",
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      CustomText(
                          label: "your order through this app",
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                ],
              ),
              Image.asset(
                "image/Cup.png",
                width: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
