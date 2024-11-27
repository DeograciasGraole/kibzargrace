import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:kibzar/util/Sell_categories.dart';

class AddItemForsell extends StatefulWidget {
  const AddItemForsell({super.key});

  @override
  State<AddItemForsell> createState() => _AddItemForsellState();
}

class _AddItemForsellState extends State<AddItemForsell> {
  List<Map<String, dynamic>> categoryList = [
    {
      "Icon": Icons.car_repair,
      "Name": "Vehicle",
    },
    {
      "Icon": Icons.home,
      "Name": "Home",
    },
    {
      "Icon": Icons.shopping_cart,
      "Name": "Shopping",
    },
    {
      "Icon": Icons.electrical_services,
      "Name": "Electronics",
    },
    {
      "Icon": Icons.local_dining,
      "Name": "Food",
    },
    {
      "Icon": Icons.spa,
      "Name": "Beauty & Wellness",
    },
    {
      "Icon": Icons.fitness_center,
      "Name": "Fitness",
    },
    {
      "Icon": Icons.computer,
      "Name": "Computers",
    },
    {
      "Icon": Icons.phone_android,
      "Name": "Mobiles",
    },
    {
      "Icon": Icons.book,
      "Name": "Books",
    },
    {
      "Icon": Icons.style,
      "Name": "Fashion",
    },
    {
      "Icon": Icons.child_care,
      "Name": "Kids",
    },
    {
      "Icon": Icons.local_offer,
      "Name": "Deals",
    },
    {
      "Icon": Icons.music_note,
      "Name": "Music",
    },
    {
      "Icon": Icons.sports_basketball,
      "Name": "Sports",
    },
    {
      "Icon": Icons.build,
      "Name": "Tools",
    },
    {
      "Icon": Icons.pets,
      "Name": "Pets",
    },
    {
      "Icon": Icons.emoji_people,
      "Name": "Health care",
    },
    {
      "Icon": Icons.real_estate_agent,
      "Name": "Real Estate",
    },
    {
      "Icon": Icons.directions_car,
      "Name": "Auto Parts",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Item for sell",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(children: [
        Container(
          // padding: MediaQuery.of(context).viewInsets,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(237, 255, 253, 253),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(
                    child: Container(
                      //padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 245, 1, 1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color.fromARGB(39, 255, 255, 255))),
                      width: 140,
                      height: 140,

                      child: const Icon(FeatherIcons.camera, size: 70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  width: double.infinity,
                  height: 150,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(28, 210, 210, 210),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 64, 63, 63))),
                              width: 130,
                              child: const Center(
                                  child: Text(
                                "Photo ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 35, 34, 34)),
                              ))),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        "Title",
                        style: TextStyle(),
                      ),
                      fillColor: const Color.fromARGB(255, 241, 236, 236),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 139, 96, 96), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 139, 96, 96), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 68, 68), width: 2),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SellCategories(
                        categoryList: categoryList,
                      );
                    }));
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 600,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: const Color.fromARGB(255, 139, 96, 96)),
                            color: const Color.fromARGB(255, 241, 236, 236)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Categories"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      )),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Price TextField
                    SizedBox(
                      width: 320,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150, // Adjust the width as needed
                          child: TextField(
                            decoration: InputDecoration(
                              label: const Text("Price"),
                              fillColor:
                                  const Color.fromARGB(255, 241, 236, 236),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 139, 96, 96),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 139, 96, 96),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 68, 68),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Currency TextField
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 100, // Adjust the width as needed
                        height: 70, // Adjust the height as needed
                        child: TextField(
                          decoration: InputDecoration(
                            label: const Text("Currency"),
                            fillColor: const Color.fromARGB(255, 241, 236, 236),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 139, 96, 96),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 139, 96, 96),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 255, 68, 68),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      ///label: const Text("Title"),
                      fillColor: const Color.fromARGB(255, 241, 236, 236),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 139, 96, 96), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 139, 96, 96), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 68, 68), width: 2),
                      ),
                    ),
                    minLines: 3,
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    'Subimit',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )),
                )
              ]),
        ),
      ]),
    );
  }
}
