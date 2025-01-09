import 'package:flutter/material.dart';

import 'pages/pages.dart';
import 'widgets/padded_bottom_navigation_bar_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    FavoritesPage(),
    SearchPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _pages.elementAt(_seletedIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(8, 27, 37, 1),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(bodySmall: TextStyle(color: Colors.black))),
        child: BottomNavigationBar(
          items: [
            PaddedBottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            PaddedBottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            PaddedBottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            PaddedBottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _seletedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          backgroundColor: Color.fromRGBO(8, 27, 37, 0.8),
        ),
      ),
    );
  }
}
