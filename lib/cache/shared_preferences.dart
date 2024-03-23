import 'package:shared_preferences/shared_preferences.dart';

class ManagerImpl extends Cache {
  @override
  Future<bool> getInfo() async {
    final shared = await SharedPreferences.getInstance();
    return shared.getBool("info") ?? false;
  }

  @override
  Future<void> saveInfo(bool info) async {
    final shared = await SharedPreferences.getInstance();
    shared.setBool("info", info);
  }
}

abstract class Cache {
  Future<void> saveInfo(bool info);

  Future<bool> getInfo();
}
