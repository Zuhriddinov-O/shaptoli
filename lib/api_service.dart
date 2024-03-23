import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:uzum_market_project/uzum.dart';
import "package:http/http.dart" as http;
import "dart:convert";

const baseURl = "https://645be0e4a8f9e4d6e775b361.mockapi.io/api/v1";

abstract class ApiService {
  Future<List<Uzum>?> getProducts();
}

class ApiServiceImpl extends ApiService {
  // final _checker = InternetConnectionChecker();

  @override
  Future<List<Uzum>?> getProducts() async {
    // if (!await _checker.hasConnection) {
    //   return null;
    // }
    final response = await http.get(Uri.parse("$baseURl/uzum"));
    if (response.statusCode == 200) {
      final jsonString = json.decode(response.body) as List;
      return jsonString.map((e) => Uzum.fromJson(e)).toList();
    }
    return [];
  }
  Future<void> delete(String? id)async{
    await http.delete(Uri.parse("$baseURl/uzum/$id"));
  }
}
