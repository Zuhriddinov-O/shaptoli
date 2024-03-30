import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../categories/categories_page.dart';
import '../categories/main_page.dart';
import '../kabinet/kabinet_page.dart';
import '../savat/saved_products_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pages = <StatefulWidget>[
    const MainPage(),
    const KatalogPage(),
    const SavatPage(),
    const KabinetPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepPurple,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        useLegacyColorScheme: true,
        enableFeedback: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        onTap: (value) {
          setState(
            () {
              _currentIndex = value;
            },
          );
        },
        selectedLabelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/logos/uzumLogo.png",
                width: 43,
                height: 25,
                fit: BoxFit.fill,
                color: _currentIndex == 0 ? Colors.deepPurple : Colors.grey),
            label: 'Bosh sahifa',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/logos/catalogueIcon.png",
                width: 50,
                height: 25,
                fit: BoxFit.fill,
                color: _currentIndex == 1 ? Colors.deepPurple : Colors.grey),
            label: 'Katalog',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/logos/shopping-bag.png",
                width: 30, color: _currentIndex == 2 ? Colors.deepPurple : Colors.grey),
            label: 'Savat',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person, color: _currentIndex == 3 ? Colors.deepPurple : Colors.grey),
            label: 'Kabinet',
          )
        ],
      ),
    );
  }
}
