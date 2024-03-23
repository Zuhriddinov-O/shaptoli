import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

ScrollController scrollController = ScrollController();

Scrollbar containedTabBar() {

  return Scrollbar(
    controller: scrollController,
    child: Container(
      height: 750,
      width: double.infinity,
      color: Colors.white,
      child: ContainedTabBarView(
        tabBarProperties:
            const TabBarProperties(indicatorColor: Colors.deepPurple, indicatorSize: TabBarIndicatorSize.tab),
        tabs: const [
          Text("Savdo"),
          Text("Tavsiyalar"),
        ],
        views: [
          Container(
            color: Colors.blueGrey,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, mainAxisExtent: 160),
              itemBuilder: (context, index) {
                return Card();
              },
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: const Center(child: Text("Add up from Backed end page 2")),
          ),
        ],
      ),
    ),
  );
}
