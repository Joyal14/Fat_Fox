import 'package:fatfox_app/Gobel/golbel_variable.dart';
import 'package:fatfox_app/widgets/card/custom_hotel_menu_card.dart';
import 'package:fatfox_app/widgets/custom_horizontal.dart';
import 'package:fatfox_app/widgets/single_text.dart';
import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/custom_container.dart';
import 'package:fatfox_app/widgets/custom_cart_button.dart';

class HotelMenu extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HotelMenu({Key? key});

  @override
  State<HotelMenu> createState() => _HotelMenuState();
}

class _HotelMenuState extends State<HotelMenu> {
  final List<String> filters = const ['All', 'Super Saver Meal Box', 'Combo'];
  String? selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters.isNotEmpty ? filters[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(38, 38, 38, 1),
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
          size: 25,
        ),
        title: const Center(
          child: CustomSingleTextWidget(
              label: "Hotel & Menu",
              color: Colors.white,
              size: 20,
              fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Card(
                color: const Color.fromRGBO(51, 51, 51, 1),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: CustomSingleTextWidget(
                                label: "Ritz-Carlton Hotel",
                                color: Theme.of(context).colorScheme.primary,
                                size: 22,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 2),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: CustomSingleTextWidget(
                                  label: "Biryani, Hyderabadi, North..",
                                  color: Colors.white,
                                  size: 12,
                                  fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CustomSingleTextWidget(
                                label: "Tiger Circle, Manipal",
                                color: Colors.white,
                                size: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 80, // Adjust the width as needed
                        color: const Color.fromRGBO(58, 58, 58, 1),
                        child: const Center(
                          child: CustomSingleTextWidget(
                              label: "4 Km",
                              color: Colors.white,
                              size: 10,
                              fontWeight: FontWeight.normal),
                        ), // Color of the box on the right
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CustomSingleTextWidget(
                        label: "Find Your Food",
                        color: Colors.white,
                        size: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                CustomContainer(
                  bcolor: Colors.green,
                  image: "image/veg.png",
                  text: "Pure Veg",
                ),
                SizedBox(
                  width: 10,
                ),
                CustomContainer(
                    bcolor: Colors.red,
                    image: "image/non_veg.png",
                    text: "Non Veg")
              ],
            ),
            SizedBox(
              height: 60,
              child: HorizontalChipList(
                filters: filters,
                selectedFilter: selectedFilter,
                onChipTap: (selectedFilter) {
                  setState(() {
                    this.selectedFilter = selectedFilter;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 468,
              child: ListView.builder(
                  itemCount: hotelmenu.length,
                  itemBuilder: (context, index) {
                    final hotelmenus = hotelmenu[index];
                    return HotelCard(
                      images: hotelmenus['imageUrl'] as String,
                      price: hotelmenus['prices'] as String,
                      title: hotelmenus['title'] as String,
                    );
                  }),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromRGBO(58, 58, 58, 1),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: CartButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
