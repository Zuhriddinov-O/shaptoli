import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int _currentIndex = 0;

BottomNavigationBar bottomNavigationBar(BuildContext context, setState) {
  return BottomNavigationBar(
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
        icon: Image.asset("assets/logos/uzumLogo.png", width: 80),
        label: 'Bosh sahifa',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/logos/catalogueIcon.png", width: 80),
        label: 'Katalog',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/logos/shopping-bag.png", width: 80),
        label: 'Savat',
      ),
      const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person),
        label: 'Kabinet',
      )
    ],
  );
}
