import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uzum_market_project/pages/categories/poyabzallar/poyabzallar_page.dart';
import 'package:uzum_market_project/pages/categories/xobbi_va_ijod/xobbi_page.dart';
import '../../widgets/app_bar_for_categories.dart';
import '../../widgets/cupertino_list_tile.dart';
import 'aksessuarlar/aksessuarlar_page.dart';
import 'bog_tarqmoqlar/bog_page.dart';
import 'gozallik/gozallik_page.dart';
import 'kanselyariya_tovarlari/kanselyariya_page.dart';
import 'kitoblar/kitoblar_page.dart';
import 'kiyim/kiyim_page.dart';
import 'maishiy_texnikalar/maishiy_page.dart';
import 'oziq_ovqat/oziq_ovqat_page.dart';

class KatalogPage extends StatefulWidget {
  const KatalogPage({super.key});

  @override
  State<KatalogPage> createState() => _KatalogPageState();
}

class _KatalogPageState extends State<KatalogPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: appBarForCategories("assets/images/slider_icon.png"),
      body: ListView(
        children: [
          const Gap(5),
          cupertinoListTile(context, "Aksessuarlar", Aksessuarlar(), "assets/images/category_icon/aksessuarlar.png"),
          const Gap(3),
          cupertinoListTile(context, "Bog' va Tomorqa",BogPage(), "assets/images/category_icon/bog_va_tomorqa.png"),
          const Gap(3),
          cupertinoListTile(context, "Go'zallik", GozallikPage(), "assets/images/category_icon/gozallik.png"),
          const Gap(3),
          cupertinoListTile(context, "Kanselyariya", KanselyariyaPage(), "assets/images/category_icon/kanselyariya.png"),
          const Gap(3),
          cupertinoListTile(context, "Kitoblar", KitoblarPage(), "assets/images/category_icon/kitoblar.png"),
          const Gap(3),
          cupertinoListTile(context, "Kiyim", KiyimPage(), "assets/images/category_icon/kiyim.png"),
          const Gap(3),
          cupertinoListTile(context, "Maishiy Texnikalar", MaishiyPage(), "assets/images/category_icon/maishiy_texnikalar.png"),
          const Gap(3),
          cupertinoListTile(context, "Oziq-Ovqat", OziqOvqatPage(), "assets/images/category_icon/oziq_ovqat.png"),
          const Gap(3),
          cupertinoListTile(context, "Poyabzallar", PoyabzallarPage(), "assets/images/category_icon/poyabzallar.png"),
          const Gap(3),
          cupertinoListTile(context, "Xobbi va Ijod", XobbiPage(), "assets/images/category_icon/xobbi.png"),
        ],
      )
    );
  }
}
