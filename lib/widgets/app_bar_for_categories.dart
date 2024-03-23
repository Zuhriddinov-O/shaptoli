import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBarForCategories(String iconImage) {
  return AppBar(
      backgroundColor: CupertinoColors.white,
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
      placeholderStyle: const TextStyle(color: Colors.black87, fontSize: 17),
      prefix: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          CupertinoIcons.search,
          color: Colors.grey,
          size: 27,
        ),
      ),
    ),
  );
}
