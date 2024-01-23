import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/single_text.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: double.infinity,
      color: const Color.fromRGBO(58, 58, 58, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
                child: CustomSingleTextWidget(
                    label: '1',
                    color: Colors.black,
                    size: 16,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            width: 10,
          ),
          const CustomSingleTextWidget(
              label: 'Items in cart',
              color: Colors.white,
              size: 16,
              fontWeight: FontWeight.bold),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Row(
              children: [
                const Text("Checkout"),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'image/arrow.png',
                  width: 30,
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
