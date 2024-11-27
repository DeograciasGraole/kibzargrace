import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:kibzar/util/categorie_selection.dart';
import 'package:kibzar/util/favorite_item.dart';
import 'package:kibzar/util/home_Item.dart';

class favoriteItem extends StatefulWidget {
  const favoriteItem(
      {super.key, required List<Map<String, dynamic>> ItemHomePage});

  @override
  State<favoriteItem> createState() => _favoriteItemState();
}

class _favoriteItemState extends State<favoriteItem> {
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
      "Image": "https://i.ebayimg.com/images/g/aBQAAOSw2uZnF3eP/s-l1600.webp",
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
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "All Favorites",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 33, 33),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Default",
                          style: TextStyle(fontSize: 15),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: favorite(ItemHomePage: ItemElectronics));
  }
}
