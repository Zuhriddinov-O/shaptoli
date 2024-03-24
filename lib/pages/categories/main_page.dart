import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_market_project/uzum.dart';

import '../../api_service.dart';
import '../../widgets/scrollable_categories.dart';
import '../../widgets/slider.dart';
import '../appBar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _apiService = ApiServiceImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, true),
      body: RefreshIndicator(
        onRefresh: () async {
          // _apiService.getProducts();
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
                  Container(
                    color: Colors.transparent,
                    child: FutureBuilder(
                        future: _apiService.getProducts(),
                        builder: (context, snapshot) {
                          if (snapshot.data != null && snapshot.data?.isNotEmpty == true) {
                            return _successField(snapshot.data);
                          } else if (snapshot.data == null) {
                            return const Center(
                                child: Text("No Internet Connection", style: TextStyle(fontSize: 23)));
                          } else if (snapshot.data?.isEmpty == true) {
                            return const Center(child: Text("Empty", style: TextStyle(fontSize: 23)));
                          }
                          return Container();
                        }),
                  ),
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

  _successField(List<Uzum>? products) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          mainAxisExtent: 300,
        ),
        itemCount: products?.length,
        itemBuilder: (context, index) {
          final product = products?[index];
          return InkWell(
            splashColor: Colors.green,
            onTap: () {},
            child: Ink(
              decoration: const BoxDecoration(
                backgroundBlendMode: BlendMode.luminosity,
                color: CupertinoColors.systemGrey,
              ),
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    product?.image ?? "",
                    height: 200,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Name:${product?.name ?? ""}"),
                      Text("Price:${product?.price.toString() ?? ""}"),
                      Text("Discount:${product?.discount.toString() ?? ""}"),
                    ],
                  ),
                  Text("Description:${product?.description ?? ""}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
