import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:kibzar/util/categorie_selection.dart';
import 'package:kibzar/util/home_Item.dart';

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  List<Map<String, dynamic>> categoryList = [
    {
      "Icon": const Icon(Icons.car_repair),
      "Name": "Vehicle",
    },
    {
      "Icon": const Icon(Icons.home),
      "Name": "Home",
    },
    {
      "Icon": const Icon(Icons.shopping_cart),
      "Name": "Shopping",
    },
    {
      "Icon": const Icon(Icons.electrical_services),
      "Name": "Electronics",
    },
    {
      "Icon": const Icon(Icons.local_dining),
      "Name": "Food",
    },
    {
      "Icon": const Icon(Icons.spa),
      "Name": "Beauty & Wellness",
    },
    {
      "Icon": const Icon(Icons.fitness_center),
      "Name": "Fitness",
    },
    {
      "Icon": const Icon(Icons.computer),
      "Name": "Computers",
    },
    {
      "Icon": const Icon(Icons.phone_android),
      "Name": "Mobiles",
    },
    {
      "Icon": const Icon(Icons.book),
      "Name": "Books",
    },
    {
      "Icon": const Icon(Icons.style),
      "Name": "Fashion",
    },
    {
      "Icon": const Icon(Icons.child_care),
      "Name": "Kids",
    },
    {
      "Icon": const Icon(Icons.local_offer),
      "Name": "Deals",
    },
    {
      "Icon": const Icon(Icons.music_note),
      "Name": "Music",
    },
    {
      "Icon": const Icon(Icons.sports_basketball),
      "Name": "Sports",
    },
    {
      "Icon": const Icon(Icons.build),
      "Name": "Tools",
    },
    {
      "Icon": const Icon(Icons.pets),
      "Name": "Pets",
    },
    {
      "Icon": const Icon(Icons.emoji_people),
      "Name": "Health care",
    },
    {
      "Icon": const Icon(Icons.real_estate_agent),
      "Name": "Real Estate",
    },
    {
      "Icon": const Icon(Icons.directions_car),
      "Name": "Auto Parts",
    },
  ];

  List<Map<String, dynamic>> ItemHome1 = [
    {
      "Image":
          "https://img.freepik.com/free-photo/view-3d-car_23-2150796904.jpg?t=st=1730164579~exp=1730168179~hmac=ac5cbbc24f8ed4819b6746f27849368d4c52b4c68b7c7aedd8a2356da06fb681&w=740",
      "Price": "USD 10,000",
      "Details": "BMW Series 3",
      "userPosted": "Charles border",
      "DaysPosted": "2 weeks"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/front-view-modern-sport-car_114579-5068.jpg?w=360",
      "Price": "USD 15,000",
      "Details": "Mercedes Benz C-Class",
      "userPosted": "David weler",
      "DaysPosted": "3 days"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/orange-color-sports-car-with-sport-decal-road_114579-5071.jpg?w=360",
      "Price": "USD 25,000",
      "Details": "Ford Mustang",
      "userPosted": "Linda verkyt",
      "DaysPosted": "1 month"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/white-modern-sport-sedan-parked-yard_114579-5059.jpg?w=360",
      "Price": "USD 20,500",
      "Details": "Audi A4",
      "userPosted": "Alice awerty",
      "DaysPosted": "1 week"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/black-sedan-car-parked-outside_114579-5057.jpg?w=360",
      "Price": "USD 12,000",
      "Details": "Toyota Camry",
      "userPosted": "Mike well",
      "DaysPosted": "5 days"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/blue-sport-car-city_114579-5075.jpg?w=360",
      "Price": "USD 22,000",
      "Details": "Chevrolet Corvette",
      "userPosted": "Emma eqwrry",
      "DaysPosted": "2 months"
    },
  ];

  List<Map<String, dynamic>> ItemHome2 = [
    {
      "Image":
          "https://img.freepik.com/premium-photo/interior-home_1048944-30786189.jpg?w=1380",
      "Price": "USD 500,000",
      "Details": "3-bedroom Modern House with ",
      "userPosted": "John Smith",
      "DaysPosted": "3 weeks"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/luxury-villa-exterior-night-view_1232-4652.jpg?w=360",
      "Price": "USD 750,000",
      "Details": "Luxury Villa, Beachfront",
      "userPosted": "Sarah Wilson",
      "DaysPosted": "1 month"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/cozy-little-house_1232-2182.jpg?w=360",
      "Price": "USD 150,000",
      "Details": "Cozy Cottage with Garden",
      "userPosted": "Michael Green",
      "DaysPosted": "2 weeks"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
      "Price": "USD 300,000",
      "Details": "2-bedroom Family Home",
      "userPosted": "Emma Brown",
      "DaysPosted": "4 days"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/single-family-house-exterior_1232-1703.jpg?w=360",
      "Price": "USD 250,000",
      "Details": "Single Family House",
      "userPosted": "Alex Johnson",
      "DaysPosted": "5 days"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/beautiful-house-garden_1232-4379.jpg?w=360",
      "Price": "USD 600,000",
      "Details": "Modern Home with Garden and Pool",
      "userPosted": "Sophia Martinez",
      "DaysPosted": "2 months"
    },
  ];

  List<Map<String, dynamic>> ItemElectronics = [
    {
      "Image":
          "https://img.freepik.com/free-photo/laptop-wooden-table_1232-3129.jpg?w=740",
      "Price": "USD 1,200",
      "Details": "MacBook Pro 14-inch, M1 Chip",
      "userPosted": "Alice Morgan",
      "DaysPosted": "1 week"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/smartphone-screen-mockup-wooden-table_1232-2149.jpg?w=360",
      "Price": "USD 800",
      "Details": "iPhone 13 Pro, 128GB",
      "userPosted": "John Doe",
      "DaysPosted": "3 days"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/headphones-wooden-surface_1232-4539.jpg?w=360",
      "Price": "USD 250",
      "Details": "Sony WH-1000XM4 Headphones",
      "userPosted": "Laura Benson",
      "DaysPosted": "2 weeks"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/gaming-laptop-with-neon-lights_1232-5152.jpg?w=360",
      "Price": "USD 1,500",
      "Details": "ASUS ROG Gaming Laptop, 16GB RAM, RTX 3060",
      "userPosted": "Kevin Wang",
      "DaysPosted": "1 month"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/modern-tablet-wooden-desk_1232-5211.jpg?w=360",
      "Price": "USD 600",
      "Details": "Samsung Galaxy Tab S8, 256GB",
      "userPosted": "Sophia Lee",
      "DaysPosted": "4 days"
    },
    {
      "Image":
          "https://img.freepik.com/free-photo/smartwatch-screen-close-up_1232-4168.jpg?w=360",
      "Price": "USD 300",
      "Details": "Apple Watch Series 7, 41mm",
      "userPosted": "Michael Davis",
      "DaysPosted": "2 months"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 120,
        title: Column(
          children: [
            const Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.red,
                ),
                Text(
                  "Location",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 40,
                )
              ],
            ),
            Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 75, 74, 74)),
                  labelText: "What are looking ?",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(
                            255, 69, 69, 70)), // Custom border color
                    borderRadius:
                        BorderRadius.circular(20.0), // Custom border radius
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(
                            255, 102, 102, 102)), // Keep the same color
                    borderRadius:
                        BorderRadius.circular(40.0), // Keep the same radius
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          CategorieWidget(
            categoryList: categoryList,
          ),
          const SizedBox(
            height: 20,
          ),
          homeItem(
            ItemHomePage: ItemHome1,
            PopularItem: "Popular in Car",
          ),
          homeItem(
              ItemHomePage: ItemHome2,
              PopularItem: "Popular In Residential for Rent"),
          homeItem(
              ItemHomePage: ItemElectronics,
              PopularItem: "Popular for electronic & computer")
        ],
      ),
    );
  }
}
