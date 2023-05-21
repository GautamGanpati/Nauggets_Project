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
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
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
        child: _widgetOptions.elementAt(_selectedIndex),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('Signed in'),

        //     SizedBox(height: 5,),
        //     MaterialButton(
        //       onPressed: () {
        //         FirebaseAuth.instance.signOut();
        //         },
        //         color: Colors.green,
        //         child: Text('Sign Out',),textColor: Colors.white,
        //         )
        //         ]
        // )
      ),
      bottomNavigationBar: GNav(
          backgroundColor: Colors.white,
          iconSize: 25,
          gap: 10,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          tabs: const [
            GButton(
              icon: Icons.auto_graph_sharp,
              iconColor: Colors.black,
            ),
            GButton(
              icon: Icons.attach_money_outlined,
              iconColor: Colors.black,
            ),
            GButton(
              icon: Icons.shield,
              iconColor: Colors.black,
            ),
            GButton(
              icon: Icons.person,
              iconColor: Colors.black,
            ),
            GButton(
              icon: Icons.settings,
              iconColor: Colors.black,
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
