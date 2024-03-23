import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/categories/gozallik/gozallik_page.dart';
import '../pages/categories/maishiy_texnikalar/maishiy_page.dart';
import '../pages/categories/oziq_ovqat/oziq_ovqat_page.dart';
PageController pageController=PageController(initialPage: 0, keepPage: true);
Container container(BuildContext context) {
  return Container(
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
                  return MaishiyPage();
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
                  return OziqOvqatPage();
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
  );
}
