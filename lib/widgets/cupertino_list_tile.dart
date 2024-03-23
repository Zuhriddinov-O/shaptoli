import 'package:flutter/cupertino.dart';

CupertinoListTile cupertinoListTile(BuildContext context, String titleName, pageName, String categoryImage) {
  return CupertinoListTile(
    title: Text(titleName),
    onTap: () => Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) => pageName,
      ),
    ),
    leading: Image.asset(categoryImage),
    trailing: const Icon(CupertinoIcons.forward),
    backgroundColor: CupertinoColors.white,
  );
}
