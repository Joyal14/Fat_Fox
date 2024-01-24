import 'package:fatfox_app/Gobel/golbel_variable.dart';
import 'package:fatfox_app/widgets/card/custom_juice_card.dart';
import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/single_text.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(38, 38, 38, 1),
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
          size: 25,
        ),
        title: const CustomSingleTextWidget(
            label: " Your Cart",
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.normal),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: const Color.fromRGBO(58, 58, 58, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Row(
                    children: [
                      Image.asset(
                        'image/pizza1.png',
                        height: 62,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const CustomSingleTextWidget(
                          label: 'Pepperoni pizza',
                          color: Colors.white,
                          size: 20,
                          fontWeight: FontWeight.normal),
                      const SizedBox(
                        width: 100,
                      ),
                      const Icon(
                        Icons.cancel_presentation_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 0.3,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomSingleTextWidget(
                            label: "Price:₹206",
                            color: Theme.of(context).colorScheme.primary,
                            size: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 114,
                      ),
                      Container(
                        width: 50,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Center(
                              child: CustomSingleTextWidget(
                                  label: "Edit",
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 15,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 35,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 38,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Center(
                              child: CustomSingleTextWidget(
                                  label: '1',
                                  color: Colors.black,
                                  size: 15,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 35,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // const Divider(
            //   thickness: 2,
            // ),
            Stack(
              children: [
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                Positioned(
                  top: -5, // Adjust this value to position the text
                  left: 120, // Adjust this value to position the text
                  child: Container(
                      width: 170,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: CustomSingleTextWidget(
                            label: "Add these items !",
                            color: Theme.of(context).colorScheme.primary,
                            size: 15,
                            fontWeight: FontWeight.normal),
                      )),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: cartlists.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final cartlist = cartlists[index];
                    return FoodItemCard(
                      image: cartlist['imageUrl'] as String,
                      price: cartlist['prices'] as String,
                      title: cartlist['title'] as String,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
