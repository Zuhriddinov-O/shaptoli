import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import '../pages/categories/aksessuarlar/aksessuarlar_page.dart';
import '../pages/categories/bog_tarqmoqlar/bog_page.dart';
import '../pages/categories/gozallik/gozallik_page.dart';
import '../pages/categories/kanselyariya_tovarlari/kanselyariya_page.dart';
import '../pages/categories/kitoblar/kitoblar_page.dart';
import '../pages/categories/kiyim/kiyim_page.dart';
import '../pages/categories/maishiy_texnikalar/maishiy_page.dart';
import '../pages/categories/oziq_ovqat/oziq_ovqat_page.dart';
import '../pages/categories/poyabzallar/poyabzallar_page.dart';
import '../pages/categories/xobbi_va_ijod/xobbi_page.dart';

Container singleChildScrollView(BuildContext context) {
  return Container(
    color: Colors.white,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) {
                                return const Aksessuarlar();
                              },
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 55,
                            height: 55,
                            child: Image.asset(
                              "assets/images/page_images/aksessuarlarImage.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const Text("Aksessuarlar", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const BogPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  width: 65,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/bog_tomorqa_Image.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Wrap(
                        children: [
                          Text(
                            "Bog' va Tomorqa",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return GozallikPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/gozallikImage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Go'zallik",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const KanselyariyaPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/kanselyariyaImage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Kanselyariya",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const KitoblarPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/kitoblarImage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Kitoblar",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const KiyimPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/kiyimlarImage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Kiyimlar",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const MaishiyPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  width: 75,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/maishiy_texnikalar_image.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Wrap(children: [Text("Maishiy Texnikalar",textAlign: TextAlign.center)]),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) {
                      return const OziqOvqatPage();
                    },
                  ));
                },
                child: SizedBox(
                  width: 65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/oziq_ovqat_image.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Oziq Ovqat",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const PoyabzallarPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/poyabzallarImage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Poyabzallar",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const XobbiPage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Image.asset(
                            "assets/images/page_images/xobbi_image.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text("Xobbi va Ijod",textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
