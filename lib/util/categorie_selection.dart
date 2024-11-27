import 'package:flutter/material.dart';

class CategorieWidget extends StatefulWidget {
  List<Map<String, dynamic>> categoryList;
  CategorieWidget({super.key, required this.categoryList});

  @override
  State<CategorieWidget> createState() => _CategorieWidgetState();
}

class _CategorieWidgetState extends State<CategorieWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:
              EdgeInsets.only(right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              Text(
                "See all",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        Container(
          height: 90,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.categoryList.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(158, 245, 201, 198),
                      ),
                      width: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.categoryList[index]["Icon"],
                          Text(
                            widget.categoryList[index]["Name"],
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
        ),
      ],
    );
  }
}
