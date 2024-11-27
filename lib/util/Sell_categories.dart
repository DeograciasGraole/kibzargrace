import 'package:flutter/material.dart';

class SellCategories extends StatefulWidget {
  List<Map<String, dynamic>> categoryList;
  SellCategories({super.key, required this.categoryList});

  @override
  State<SellCategories> createState() => _CategorieWidgetState();
}

class _CategorieWidgetState extends State<SellCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select category"),
      ),
      body: ListView(
        children: [
          Container(
            height: 800,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: widget.categoryList.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color:
                                        Color.fromARGB(115, 239, 227, 227)))),
                        width: 90,
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                widget.categoryList[index]["Icon"],
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.categoryList[index]["Name"],
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
