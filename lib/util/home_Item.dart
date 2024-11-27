import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:kibzar/util/ItemDetails_Page.dart';

class homeItem extends StatefulWidget {
  List<Map<String, dynamic>> ItemHomePage;

  String PopularItem;
  homeItem({
    super.key,
    required this.ItemHomePage,
    required this.PopularItem,
  });

  @override
  State<homeItem> createState() => _homeItemState();
}

class _homeItemState extends State<homeItem> {
  List<Map<String, dynamic>> ItemDetailInfo = [
    {
      "Image": [
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
        "https://img.freepik.com/free-photo/modern-house-exterior_1232-2241.jpg?w=360",
      ],
      "Detail": "hell",
      "Price": "jjjj",
      "SellerNAME": "iiii"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.PopularItem,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              Icon(FeatherIcons.arrowRight),
            ],
          ),
        ),
        Container(
          height: 210,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.ItemHomePage.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ItemDetails(
                          ItemInfoDetail: ItemDetailInfo,
                        );
                      },
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255,
                              255), // Background color for the neumorphic effect
                          borderRadius: BorderRadius.circular(
                              10), // Rounded corners (optional)
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 252, 252, 252)
                                  .withOpacity(
                                      0.7), // Light shadow for top-left
                              offset: const Offset(-5, -5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.10), // Dark shadow for bottom-right
                              offset: const Offset(5, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        width: 180,

                        //  padding: EdgeInsets.all(14.0),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  widget.ItemHomePage[index]["Image"],
                                  fit: BoxFit.cover,
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  color: Color.fromARGB(255, 12, 12, 12),
                                ),
                                width: double.infinity,
                                height: 70,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(widget.ItemHomePage[index]["Price"]),
                                    Icon(Icons.favorite_outline)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                                child: Text(
                                  widget.ItemHomePage[index]["Details"],
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                                child: Text(
                                    widget.ItemHomePage[index]["userPosted"],
                                    textAlign: TextAlign.start),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                                child: Text(
                                    widget.ItemHomePage[index]["DaysPosted"],
                                    textAlign: TextAlign.start),
                              ),
                            ])),
                  ),
                );
              })),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
