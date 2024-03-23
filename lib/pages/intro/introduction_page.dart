import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../cache/shared_preferences.dart';
import '../home/home_page.dart';

class IntroductionPage extends StatefulWidget {
  IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final Cache cache = ManagerImpl();

  @override
  void initState() {
    getData();
    super.initState();
  }

  bool introActive = false;

  void getData() async {
    introActive = await cache.getInfo();
    keepPage;
    setState(() {});
  }

  @override
  int index = 0;
  List text = [
    "Tarqatish punktlariga 1 kunda bepul\nyetkazib berish!",
    "Uzum muddatli to'lovi bilan o'zingizga\nko'proq ruxsat bering",
    "Uzum ichida hech qanday shartsiz\nqaytish imkoniyati.\nHech qanday bahslarsiz!",
    "Buyurtma holatini kuzating va\nchegirma haqida birinchilardan bo'lib\nbilin",
    "",
  ];

  bool keepPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: PageView(
                onPageChanged: (value) {},
                controller: PageController(initialPage: 0, keepPage: keepPage),
                children: [
                  Image.asset("assets/images/introImages/intro_image_$index.png",
                      height: 300, filterQuality: FilterQuality.high),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  text[index],
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 22, inherit: true),
                ),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(170),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0 ? Colors.purple : Colors.black12,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 1 ? Colors.purple : Colors.black12,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 2 ? Colors.purple : Colors.black12,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 3 ? Colors.purple : Colors.black12,
                    ),
                  ),
                  const Gap(170),
                ],
              ),
            ),
            const Gap(50),
            MaterialButton(
              shape: const StadiumBorder(),
              minWidth: 150,
              height: 40,
              onPressed: () {
                setState(
                  () {
                    index += 1;
                    cache.saveInfo(index > 3 ? introActive = true : false);
                    index > 3
                        ? Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ))
                        : null;
                  },
                );
              },
              color: Colors.purple,
              child: Text(
                index < 3 ? "Keyingisi" : "Sahifaga o'tish",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
