import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_bar_for_category_items.dart';

class Aksessuarlar extends StatefulWidget {
  const Aksessuarlar({super.key});

  @override
  State<Aksessuarlar> createState() => _AksessuarlarState();
}

class _AksessuarlarState extends State<Aksessuarlar> {



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
                children: const [
                  Padding(
                      padding: EdgeInsets.only(top: 8, left: 12),
                      child:
                          Text("Aksessuarlar", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27))),
                  Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text("61 343 ta tovar", style: TextStyle(color: Colors.grey, fontSize: 18))),
                  Divider(thickness: 0.5),
                ],
              ),
            ),
    );
  }
}
