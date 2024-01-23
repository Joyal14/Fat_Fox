import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/single_text.dart';

class HotelMenuCard extends StatefulWidget {
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
  _HotelMenuCardState createState() => _HotelMenuCardState();
}

class _HotelMenuCardState extends State<HotelMenuCard> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 3),
                        child: Image.asset(
                          widget.images,
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
                          label: widget.title,
                          color: Theme.of(context).colorScheme.primary,
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(height: 8),
                        CustomSingleTextWidget(
                          label: widget.price,
                          color: Colors.white,
                          size: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 100, // Set your desired width
                            height: 35, // Set your desired height
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    8), // Adjust the radius as needed
                              ),
                            ),
                            child: itemCount == 0
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            itemCount++;
                                          });
                                        },
                                        child: const CustomSingleTextWidget(
                                          label: "Add",
                                          color: Colors.white,
                                          size: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            itemCount--;
                                          });
                                        },
                                        child: const CustomSingleTextWidget(
                                          label: "Sub",
                                          color: Colors.white,
                                          size: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        '$itemCount',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            itemCount++;
                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
