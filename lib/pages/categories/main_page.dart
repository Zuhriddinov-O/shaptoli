import 'dart:async';

import 'package:animations/animations.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market_project/classes/products.dart';

import '../../widgets/scrollable_categories.dart';
import '../appBar.dart';
import 'gozallik/gozallik_page.dart';
import 'maishiy_texnikalar/maishiy_page.dart';
import 'oziq_ovqat/oziq_ovqat_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool saveProduct = false;
  int currentPage = 0;
  Timer? timer;
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPage < 5) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, true),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              color: Colors.white,
              child: PageView(
                controller: pageController,
                reverse: true,
                scrollBehavior: const ScrollBehavior(),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return const MaishiyPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/slider_images/smartfone0.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return GozallikPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/slider_images/gozallik1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return GozallikPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/slider_images/gozallik0.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return const MaishiyPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/slider_images/smartfone1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return const OziqOvqatPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/slider_images/oziq_ovqat0.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return GozallikPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          "assets/images/slider_images/gozallik2.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            singleChildScrollView(context),
            Container(
              height: 750,
              width: double.infinity,
              color: Colors.white,
              child: ContainedTabBarView(
                tabBarProperties: const TabBarProperties(
                    indicatorColor: Colors.deepPurple, indicatorSize: TabBarIndicatorSize.tab),
                tabs: const [
                  Text("Savdo"),
                  Text("Tavsiyalar"),
                ],
                views: [
                  _container(),
                  Container(
                    color: Colors.blueGrey,
                    child: const Center(child: Text("Add up from Backed end page 2")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _container() {
    return GridView.builder(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 80),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width <= 550
            ? 2
            : true && MediaQuery.of(context).size.width <= 750 && MediaQuery.of(context).size.width > 550
                ? 3
                : true && MediaQuery.of(context).size.width > 750 && MediaQuery.of(context).size.width <= 950
                    ? 4
                    : 5,
        mainAxisExtent: MediaQuery.of(context).size.height / 1.75,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: productList.length,
      itemBuilder: (BuildContext context, index) {
        productList.shuffle();
        final items = productList[index];
        return OpenContainer(
          closedBuilder: (BuildContext context, void Function() action) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      items.image,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(items.name, overflow: TextOverflow.ellipsis),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/logos/star.png", width: 13, height: 13),
                      Text(items.rating.toString()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${items.price} so'm",
                          style: const TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${items.discount} so'm",
                          ),
                          IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).hideCurrentSnackBar();
                              saveProduct = !saveProduct;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: saveProduct ? null : Colors.red,
                                  content: Text(saveProduct
                                      ? "Product is added Succesfully"
                                      : "Product is removed from the list"),
                                ),
                              );
                            },
                            icon: Image.asset("assets/logos/shopping-bag2.png",
                                width: 30, height: 30, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
            return SizedBox(
              child: ListView(
                children: [
                  AppBar(
                      centerTitle: true,
                      title: Text("${items.categoryName} Categoriyasi",
                          textScaler: const TextScaler.linear(1.3),
                          style: const TextStyle(fontSize: 16, textBaseline: TextBaseline.ideographic)),
                      forceMaterialTransparency: true),
                  Center(
                    child: Image.network(
                      items.image,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Image.asset("assets/logos/star.png", width: 13, height: 13),
                              Text("${items.rating} ( 7803 baho ) ${items.count} ta buyurtma"),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            saveProduct = !saveProduct;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: saveProduct ? null : Colors.red,
                                content: Text(saveProduct
                                    ? "Product is added Succesfully"
                                    : "Product is removed from the list"),
                              ),
                            );
                          },
                          icon: Image.asset("assets/logos/shopping-bag2.png",
                              width: 30, height: 30, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    items.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Container(
                              color: const Color(0xFF7000FE),
                              child: const Text("Ekskluziv", style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              color: const Color(0xFFFCB0D4),
                              child: const Text("Sevimli tovarlar", style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              color: const Color(0xFF3B007D),
                              child: const Text("Aksiya", style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
