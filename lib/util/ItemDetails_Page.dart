import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  List<Map<String, dynamic>> ItemInfoDetail = [];
  ItemDetails({super.key, required this.ItemInfoDetail});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  final PageController _controller = PageController(initialPage: 1);
  int CurrentImage = 1;
  int totalImage = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item details'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amberAccent,
                child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (int page) {
                      setState(() {
                        CurrentImage = page;
                        ++CurrentImage;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, int index) {
                      return Image.network(
                        widget.ItemInfoDetail[0]["Image"][index],
                        fit: BoxFit.cover,
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Car Tesla TOYOTA VITZ",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w900),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 4),
                          Text(
                            "Detail :",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "An advanced electric car that combines performance and luxury. "
                            "The Tesla Model S Plaidoffers unmatched speed, a spacious interior, "
                            "and impressive range, making it ideal for high-performance enthusiasts and environmentally conscious drivers alike.",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Price: USD 10,000",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 250,
            right: 380,
            child: Container(
              color: Color.fromARGB(85, 11, 11, 11),
              child: Row(
                children: [
                  const Icon(Icons.image_rounded,
                      color: Color.fromARGB(255, 255, 253, 253)),
                  Text(
                    CurrentImage.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    '/',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    totalImage.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 352,
            child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  color: Color.fromARGB(255, 251, 45, 45),
                ),
                child: Text(
                  "USD 10_000",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                )),
          ),
          Positioned(
            top: 290,
            left: 300,
            child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.favorite_outline_rounded)),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),
        //color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Container(
            child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    // border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(70)),
                child: Center(
                  child: Text("Chat with seller",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                )),
          ),
        ),
      ),
    );
  }
}
