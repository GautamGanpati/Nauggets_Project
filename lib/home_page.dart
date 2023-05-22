import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:xencov_project/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  final screens = [
    Text(
      '1',
      style: optionStyle,
    ),
    Text(
      '2',
      style: optionStyle,
    ),
    Text(
      '3',
      style: optionStyle,
    ),
    UserPage(),
    Text(
      '5',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.list_sharp))
        ],
      ),
      body: Center(
        child: screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        backgroundColor: Colors.blue,
        iconSize: 30.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple[700],
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            label: '1',
            icon: Icon(Icons.auto_graph_sharp),
          ),
          BottomNavigationBarItem(
            label: '2',
            icon: Icon(Icons.attach_money_outlined),
          ),
          BottomNavigationBarItem(
            label: '3',
            icon: Icon(Icons.shield),
          ),
          BottomNavigationBarItem(
            label: '4',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: '5',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
