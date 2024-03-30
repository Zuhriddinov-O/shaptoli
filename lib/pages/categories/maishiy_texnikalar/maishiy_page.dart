import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../classes/products.dart';
import '../../../widgets/app_bar_for_category_items.dart';

class MaishiyPage extends StatefulWidget {
  const MaishiyPage({super.key});

  @override
  State<MaishiyPage> createState() => _MaishiyPageState();
}

class _MaishiyPageState extends State<MaishiyPage> {
  List<Product> filteredList = [];
  bool saveProduct = false;

  @override
  void initState() {
    for (var element in productList) {
      if (element.categoryName == "maishiy texnika") {
        filteredList.add(element);
      }
    }
    setState(() {});
    super.initState();
  }

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
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 8, left: 12),
                child: Text("Maishiy texnikalar", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27))),
            Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("${filteredList.length} ta tovar", style: TextStyle(color: Colors.grey, fontSize: 18))),
            const Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
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
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      return OpenContainer(closedBuilder: (BuildContext context, action) {
                        final item = filteredList[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  item.image,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height / 2.9,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item.name, overflow: TextOverflow.ellipsis),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/logos/star.png", width: 13, height: 13),
                                  Text(item.rating.toString()),
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
                                      "${item.price} so'm",
                                      style: const TextStyle(decoration: TextDecoration.lineThrough),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${item.discount} so'm",
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                          saveProduct = !saveProduct;
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              backgroundColor: saveProduct ? null : Colors.red,
                                              content: Text(saveProduct ? "Product is added Succesfully" : "Product is removed from the list"),
                                            ),
                                          );
                                        },
                                        icon: Image.asset("assets/logos/shopping-bag2.png", width: 30, height: 30, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }, openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                        final item = filteredList[index];
                        return SizedBox(
                          child: ListView(
                            children: [
                              AppBar(
                                  centerTitle: true,
                                  title: Text("${item.categoryName} Categoriyasi",
                                      textScaler: const TextScaler.linear(1.3), style: const TextStyle(fontSize: 16, textBaseline: TextBaseline.ideographic)),
                                  forceMaterialTransparency: true),
                              Center(
                                child: Image.network(
                                  item.image,
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
                                          Text("${item.rating} ( 7803 baho ) ${item.count} ta buyurtma"),
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
                                            content: Text(saveProduct ? "Product is added Succesfully" : "Product is removed from the list"),
                                          ),
                                        );
                                      },
                                      icon: Image.asset("assets/logos/shopping-bag2.png", width: 30, height: 30, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                item.name,
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
                      });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
