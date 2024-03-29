import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../classes/products.dart';
import '../../../widgets/app_bar_for_category_items.dart';

class BogPage extends StatefulWidget {
  const BogPage({super.key});

  @override
  State<BogPage> createState() => _BogPageState();
}

class _BogPageState extends State<BogPage> {
  bool saveProduct = false;

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
        child: SingleChildScrollView(
            child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 8, left: 12),
                          child: Text("Bog' va tomorqa", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27))),
                      const Padding(
                          padding: EdgeInsets.only(left: 12), child: Text("61 343 ta tovar", style: TextStyle(color: Colors.grey, fontSize: 18))),
            const Divider(thickness: 0.5),
            SizedBox(
              height: 700,
              child: GridView.builder(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 80),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width <= 550
                      ? 2
                      : true && MediaQuery.of(context).size.width <= 750 && MediaQuery.of(context).size.width > 550
                          ? 3
                          : true && MediaQuery.of(context).size.width > 750 && MediaQuery.of(context).size.width <= 950
                              ? 4
                              : 5,
                  mainAxisExtent: MediaQuery.of(context).size.height / 1.85,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final items = productList[index];
                  return OpenContainer(
                    closedBuilder: (BuildContext context, void Function() action) {
                      if (productList[index].categoryName == 'bog') {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  items.image,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height / 2.9,
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
                                              content:
                                                  Text(saveProduct ? "Product is added Succesfully" : "Product is removed from the list"),
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
                      } else {
                        return const Center(
                          child: Text('data'),
                        );
                      }
                    },
                    openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
                      if (items.categoryName == 'bog') {
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
                                            content:
                                                Text(saveProduct ? "Product is added Succesfully" : "Product is removed from the list"),
                                          ),
                                        );
                                      },
                                      icon: Image.asset("assets/logos/shopping-bag2.png", width: 30, height: 30, color: Colors.grey),
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
                      } else {
                        return const Center(
                          child: Text('data'),
                        );
                      }
                    },
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }

// Widget _container() {
//   return GridView.builder(
//     padding: EdgeInsets.all(MediaQuery.of(context).size.width / 80),
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: MediaQuery.of(context).size.width <= 550
//           ? 2
//           : true && MediaQuery.of(context).size.width <= 750 && MediaQuery.of(context).size.width > 550
//           ? 3
//           : true && MediaQuery.of(context).size.width > 750 && MediaQuery.of(context).size.width <= 950
//           ? 4
//           : 5,
//       mainAxisExtent: MediaQuery.of(context).size.height / 1.85,
//       crossAxisSpacing: 12,
//       mainAxisSpacing: 12,
//     ),
//     itemCount: productList.length,
//     itemBuilder: (BuildContext context, index) {
//       productList.shuffle();
//       final items = productList[index];
//       return OpenContainer(
//         closedBuilder: (BuildContext context, void Function() action) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(5),
//                   child: Image.network(
//                     items.image,
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.height / 2.9,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(items.name, overflow: TextOverflow.ellipsis),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0),
//                 child: Row(
//                   children: [
//                     Image.asset("assets/logos/star.png", width: 13, height: 13),
//                     Text(items.rating.toString()),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Column(
//                   children: [
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "${items.price} so'm",
//                         style: const TextStyle(decoration: TextDecoration.lineThrough),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "${items.discount} so'm",
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                             saveProduct = !saveProduct;
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 backgroundColor: saveProduct ? null : Colors.red,
//                                 content: Text(saveProduct
//                                     ? "Product is added Succesfully"
//                                     : "Product is removed from the list"),
//                               ),
//                             );
//                           },
//                           icon: Image.asset("assets/logos/shopping-bag2.png",
//                               width: 30, height: 30, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//         openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
//           return SizedBox(
//             child: ListView(
//               children: [
//                 AppBar(
//                     centerTitle: true,
//                     title: Text("${items.categoryName} Categoriyasi",
//                         textScaler: const TextScaler.linear(1.3),
//                         style: const TextStyle(fontSize: 16, textBaseline: TextBaseline.ideographic)),
//                     forceMaterialTransparency: true),
//                 Center(
//                   child: Image.network(
//                     items.image,
//                     width: double.infinity,
//                     height: MediaQuery.of(context).size.height / 1.5,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         flex: 2,
//                         child: Row(
//                           children: [
//                             Image.asset("assets/logos/star.png", width: 13, height: 13),
//                             Text("${items.rating} ( 7803 baho ) ${items.count} ta buyurtma"),
//                           ],
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                           saveProduct = !saveProduct;
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               backgroundColor: saveProduct ? null : Colors.red,
//                               content: Text(saveProduct
//                                   ? "Product is added Succesfully"
//                                   : "Product is removed from the list"),
//                             ),
//                           );
//                         },
//                         icon: Image.asset("assets/logos/shopping-bag2.png",
//                             width: 30, height: 30, color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Text(
//                   items.name,
//                   style: const TextStyle(fontSize: 20),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       flex: 1,
//                       child: Row(
//                         children: [
//                           Container(
//                             color: const Color(0xFF7000FE),
//                             child: const Text("Ekskluziv", style: TextStyle(color: Colors.white)),
//                           ),
//                           Container(
//                             color: const Color(0xFFFCB0D4),
//                             child: const Text("Sevimli tovarlar", style: TextStyle(color: Colors.white)),
//                           ),
//                           Container(
//                             color: const Color(0xFF3B007D),
//                             child: const Text("Aksiya", style: TextStyle(color: Colors.white)),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       );
//     },
//   );
// }
}
