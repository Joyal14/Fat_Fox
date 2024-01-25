// import 'package:flutter/material.dart';
// import 'package:fatfox_app/widgets/single_text.dart';

// class HotelMenuCard extends StatefulWidget {
//   const HotelMenuCard({
//     Key? key,
//     required this.images,
//     required this.title,
//     required this.price,
//   }) : super(key: key);

//   final String images;
//   final String title;
//   final String price;

//   @override
//   // ignore: library_private_types_in_public_api
//   _HotelMenuCardState createState() => _HotelMenuCardState();
// }

// class _HotelMenuCardState extends State<HotelMenuCard> {
//   int itemCount = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: Card(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//             color: const Color.fromRGBO(58, 58, 58, 1),
//             child: SizedBox(
//               height: 110, // Set your desired height
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 2,
//                     child: ClipRRect(
//                       borderRadius: const BorderRadius.all(Radius.circular(10)),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 3, vertical: 3),
//                         child: Image.asset(
//                           widget.images,
//                           height: double.infinity,
//                           fit: BoxFit.fitHeight,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10), // Adjust the spacing
//                   Expanded(
//                     flex: 3,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CustomSingleTextWidget(
//                           label: widget.title,
//                           color: Theme.of(context).colorScheme.primary,
//                           size: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         const SizedBox(height: 8),
//                         CustomSingleTextWidget(
//                           label: widget.price,
//                           color: Colors.white,
//                           size: 15,
//                           fontWeight: FontWeight.normal,
//                         ),
//                         const SizedBox(height: 8),
//                         Align(
//                           alignment: Alignment.bottomRight,
//                           child: Container(
//                             width: 100, // Set your desired width
//                             height: 35, // Set your desired height
//                             decoration: BoxDecoration(
//                               color: itemCount == 0
//                                   ? Colors.orange
//                                   : const Color.fromRGBO(58, 58, 58, 1),
//                               borderRadius: const BorderRadius.all(
//                                 Radius.circular(8),
//                               ),
//                             ),
//                             child: itemCount == 0
//                                 ? Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       // Section for "Add" text
//                                       const CustomSingleTextWidget(
//                                         label: "Add",
//                                         color: Colors.white,
//                                         size: 15,
//                                         fontWeight: FontWeight.normal,
//                                       ),
//                                       const SizedBox(width: 30),
//                                       // Section for "+" icon
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             itemCount++;
//                                           });
//                                         },
//                                         child: Container(
//                                           width: 30,
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                             color: Colors.white,
//                                             shape: BoxShape.rectangle,
//                                             borderRadius:
//                                                 BorderRadius.circular(3),
//                                             border: Border.all(
//                                               color: Colors.white,
//                                               width: 2,
//                                             ),
//                                           ),
//                                           child: const Center(
//                                             child: Icon(
//                                               Icons.add,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                                 : Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       // Section for "-" icon
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             itemCount--;
//                                           });
//                                         },
//                                         child: Container(
//                                           width: 30,
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                             shape: BoxShape.rectangle,
//                                             borderRadius:
//                                                 BorderRadius.circular(3),
//                                             border: Border.all(
//                                               color: Theme.of(context)
//                                                   .colorScheme
//                                                   .primary,
//                                               width: 1,
//                                             ),
//                                           ),
//                                           child: Center(
//                                             child: Icon(
//                                               Icons.remove,
//                                               color: Theme.of(context)
//                                                   .colorScheme
//                                                   .primary,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       // Section for count display
//                                       Container(
//                                         width: 30,
//                                         height: 30,
//                                         decoration: BoxDecoration(
//                                           color: Colors.white,
//                                           shape: BoxShape.rectangle,
//                                           borderRadius:
//                                               BorderRadius.circular(3),
//                                           border: Border.all(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         child: Center(
//                                             child: CustomSingleTextWidget(
//                                           label: itemCount.toString(),
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.normal,
//                                           size: 15,
//                                         )),
//                                       ),
//                                       // Section for "+" icon
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             itemCount++;
//                                           });
//                                         },
//                                         child: Container(
//                                           width: 30,
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                             shape: BoxShape.rectangle,
//                                             borderRadius:
//                                                 BorderRadius.circular(3),
//                                             border: Border.all(
//                                               color: Theme.of(context)
//                                                   .colorScheme
//                                                   .primary,
//                                               width: 1,
//                                             ),
//                                           ),
//                                           child: Center(
//                                             child: Icon(
//                                               Icons.add,
//                                               color: Theme.of(context)
//                                                   .colorScheme
//                                                   .primary,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fatfox_app/provider/hotel_menu_provider.dart';
import 'package:fatfox_app/widgets/single_text.dart';

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
    return ChangeNotifierProvider<HotelMenuProvider>(
      create: (context) => HotelMenuProvider(),
      child: Consumer<HotelMenuProvider>(
        builder: (context, provider, _) {
          return _buildCard(context, provider);
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, HotelMenuProvider provider) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: const Color.fromRGBO(58, 58, 58, 1),
            child: SizedBox(
              height: 110, // Set your desired height
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
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(height: 8),
                        CustomSingleTextWidget(
                          label: price,
                          color: Colors.white,
                          size: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                              color: provider.itemcount == 0
                                  ? Colors.orange
                                  : const Color.fromRGBO(58, 58, 58, 1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: provider.itemcount == 0
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      // Section for "Add" text
                                      const CustomSingleTextWidget(
                                        label: "Add",
                                        color: Colors.white,
                                        size: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      const SizedBox(width: 30),
                                      // Section for "+" icon
                                      GestureDetector(
                                        onTap: () {
                                          provider.increment();
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2,
                                            ),
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
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      // Section for "-" icon
                                      GestureDetector(
                                        onTap: () {
                                          provider.decrement();
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              width: 1,
                                            ),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.remove,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Section for count display
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Center(
                                          child: CustomSingleTextWidget(
                                            label:
                                                provider.itemcount.toString(),
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                      // Section for "+" icon
                                      GestureDetector(
                                        onTap: () {
                                          provider.increment();
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              width: 1,
                                            ),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
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
