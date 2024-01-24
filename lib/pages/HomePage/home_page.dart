import 'package:fatfox_app/pages/hotel_menu_page.dart';
import 'package:fatfox_app/widgets/card/custom_card.dart';
import 'package:fatfox_app/widgets/card/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/custom_button.dart';
import 'package:fatfox_app/widgets/custom_text.dart';
import 'package:fatfox_app/Gobel/golbel_variable.dart';
import 'package:fatfox_app/widgets/custom_horizontal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All Hotels', 'Non Veg', 'Pure Veg'];
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
        backgroundColor: const Color.fromARGB(1, 252, 252, 252),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: 20, // Set your desired height
            width: 20, // Set your desired width
            child: Image.asset("image/FatFox.png"),
          ),
        ),
        title: Row(
          children: [
            const Text(
              "Hello, Mashesh",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(width: 5),
            Image.asset("image/hand.png"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
              child: CustomCard(),
            ),
            SizedBox(
              height: 50,
              child: Card(
                color: const Color.fromRGBO(58, 58, 58, 1),
                elevation: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("image/hotel.png", height: 100),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          label: "Ritz Hotel",
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        const CustomText(
                          label: "Booking Details - Today 10:30pm / 10 Members",
                          color: Color.fromRGBO(174, 174, 174, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    const SizedBox(width: 80),
                    SizedBox(
                      width: 49,
                      child: CustomElevatedButton(
                        context: context,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        label: '',
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                label: "All Restaurant around you",
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
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
            SizedBox(
              height: 480,
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HotelMenu(
                                  title: product['title'] as String,
                                  ing: product['ing'] as String)));
                    },
                    child: ProductCard(
                      title: product['title'] as String,
                      ing: product['ing'] as String,
                      city: product['city'] as String,
                      images: product['imageUrl'] as String,
                      image: product['imageIcon'] as String,
                      backgroundcolor: const Color.fromARGB(35, 230, 228, 228),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  backgroundColor: const Color.fromRGBO(122, 116, 116, 1),
                  icon: Icon(
                    Icons.home_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 40,
                  ),
                  label: "",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.qr_code_2_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  label: "",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.card_giftcard_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  label: "",
                ),
              ],
              backgroundColor: Colors.black,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
