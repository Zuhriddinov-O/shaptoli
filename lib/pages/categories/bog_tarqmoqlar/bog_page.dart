import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/app_bar_for_category_items.dart';
import '../../kabinet/kabinet_page.dart';
import '../../savat/saved_products_page.dart';
import '../categories_page.dart';
import '../main_page.dart';

class BogPage extends StatefulWidget {
  const BogPage({super.key});

  @override
  State<BogPage> createState() => _BogPageState();
}

class _BogPageState extends State<BogPage> {
  bool boolean = false;

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
      appBar: appBarForCategoryItems(),
      backgroundColor: CupertinoColors.white,
      body: RefreshIndicator(
        color: Colors.blue,
        strokeWidth: 3,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: ListView(
          children: const [
            Padding(
                padding: EdgeInsets.only(top: 8, left: 12),
                child: Text("Bog' va Tomorqa", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27))),
            Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text("61 343 ta tovar", style: TextStyle(color: Colors.grey, fontSize: 18))),
            Divider(thickness: 0.5),
          ],
        ),
      ),
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
              Navigator.of(context).pushAndRemoveUntil(
                CupertinoPageRoute(
                  builder: (context) {
                    boolean = true;
                    return _pages[value];
                  },
                ),
                (route) => false,
              );
            },
          );
        },
        selectedLabelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/logos/uzumLogo.png",
              width: 40,
              height: 25,
              fit: BoxFit.fill,
            ),
            label: 'Bosh sahifa',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/logos/catalogueIcon.png", width: 40, height: 20, fit: BoxFit.cover),
            label: 'Katalog',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/logos/shopping-bag.png", width: 30, color: Colors.grey),
            label: 'Savat',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Kabinet',
          )
        ],
      ),
    );
  }
}
