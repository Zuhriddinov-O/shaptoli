import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market_project/classes/products.dart';
import '../../widgets/scrollable_categories.dart';
import '../../widgets/slider.dart';
import '../appBar.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            container(context),
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

  Container _container() {
    return Container(
      color: Colors.transparent,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: kIsWeb?5:2,
          mainAxisExtent: 450,
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
                  Center(child: Image.network(items.image,fit: BoxFit.fill,width: MediaQuery.of(context).size.width)),
                  Text(items.name,overflow:TextOverflow.ellipsis),
                  Text(items.rating.toString()),
                  Text(items.price.toString(), style: const TextStyle(decoration: TextDecoration.lineThrough, fontSize: 12),),
                  Text(items.discount.toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
