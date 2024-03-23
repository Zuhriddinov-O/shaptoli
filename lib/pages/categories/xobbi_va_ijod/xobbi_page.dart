import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/app_bar_for_category_items.dart';

class XobbiPage extends StatefulWidget {
  const XobbiPage({super.key});

  @override
  State<XobbiPage> createState() => _XobbiPageState();
}

class _XobbiPageState extends State<XobbiPage> {
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
                child: Text("Xobbi va Ijod", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27))),
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
