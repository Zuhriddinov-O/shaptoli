import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'liked_page.dart';

AppBar appBar(BuildContext context, bool likeIsHave) {
  return AppBar(
    centerTitle: true,
    title: CupertinoTextField(
      smartDashesType: SmartDashesType.enabled,
      textCapitalization: TextCapitalization.sentences,
      smartQuotesType: SmartQuotesType.enabled,
      decoration: BoxDecoration(
        border: null,
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      cursorColor: Colors.grey,
      placeholder: "Mahsulot va toifalarni qidirish",
      style: GoogleFonts.oxygen(),
      placeholderStyle: TextStyle(color: Colors.black87, fontSize: 17),
      prefix: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          CupertinoIcons.search,
          color: Colors.grey,
          size: 27,
        ),
      ),
    ),
    actions: [
      likeIsHave
          ? Padding(
              padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
              child: IconButton(
                color: Colors.grey,
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => LikedPage(),
                  ));
                },
                icon: Image.asset('assets/logos/shopping-bag.png', width: 30, height: 30),
              ),
            )
          : Container(padding: const EdgeInsets.all(0)),
    ],
  );
}
