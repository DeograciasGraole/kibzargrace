import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:kibzar/screens/Account_user.dart';
import 'package:kibzar/screens/favorite_screen.dart';
import 'package:kibzar/screens/home_screen.dart';
import 'package:kibzar/widgets/sell_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentpage = 0;
  final FocusNode _focusNode = FocusNode();
  var addForm = GlobalKey<FormState>();
  List<Widget> _Screen = [
    const myHome(),
    const favoriteItem(
      ItemHomePage: [],
    ),
    const Text("chats"),
    accountPage()
  ];

  void toggleKeyboard() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus(); // Hide the keyboard
    } else {
      FocusScope.of(context).requestFocus(_focusNode); // Show the keyboard
    }
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Clean up the focus node when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddItemForsell();
            }));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          shape: const CircleBorder(),
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(child: _Screen[_currentpage]),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          // height: 80,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentpage,
              selectedFontSize: 14, // Set selected label size
              unselectedFontSize: 13, // Set unselected label size
              selectedIconTheme:
                  const IconThemeData(size: 22), // Set selected icon size
              unselectedIconTheme: const IconThemeData(size: 20),
              selectedItemColor: const Color.fromARGB(
                  255, 226, 47, 47), // Custom color for selected item
              unselectedItemColor: const Color.fromARGB(255, 77, 76, 76),
              selectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(
                      255, 226, 47, 47)), // Color for selected label
              unselectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(
                      255, 0, 0, 0)), // Color for unselected label
              onTap: (int Newindex) {
                _currentpage = Newindex;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    FeatherIcons.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'favorite',
                  icon: Icon(Icons.favorite_outline),
                ),
                BottomNavigationBarItem(
                  label: 'chats',
                  icon: Icon(FeatherIcons.messageCircle),
                ),
                BottomNavigationBarItem(
                  label: 'Accounts',
                  icon: Icon(FeatherIcons.user),
                ),
              ]),
        ),
      ),
    );
  }
}
