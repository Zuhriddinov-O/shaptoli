import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/app_bar_for_category_items.dart';

class KitoblarPage extends StatefulWidget {
  const KitoblarPage({super.key});

  @override
  State<KitoblarPage> createState() => _KitoblarPageState();
}

class _KitoblarPageState extends State<KitoblarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: appBarForCategoryItems(),
      body: RefreshIndicator(
        color: Colors.blue,
        strokeWidth: 3,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: ListView(
          children: const [
            Padding(
                padding: EdgeInsets.only(top: 8, left: 8),
                child: Text("Kitoblar", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27))),
            Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("61 343 ta tovar", style: TextStyle(color: Colors.grey, fontSize: 18))),
            Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }
}
