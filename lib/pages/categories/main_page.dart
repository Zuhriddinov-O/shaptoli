import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uzum_market_project/classes/products.dart';

import '../../widgets/scrollable_categories.dart';
import '../../widgets/slider.dart';
import '../appBar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool saveProduct = false;

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
            // container(context),
            // singleChildScrollView(context),
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
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: kIsWeb ? 5 : 2,
        mainAxisExtent: MediaQuery.of(context).size.height/1.4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: productList.length,
      itemBuilder: (BuildContext context, index) {
        productList.shuffle();
        final items = productList[index];
        return InkWell(
          onTap: () {},
          child: Ink(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                      child: Image.network(
                        items.image,
                        height: MediaQuery.of(context).size.height/2,
                        fit: BoxFit.fill,
                      ),
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
                  padding: EdgeInsets.only(left: 10),
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
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
