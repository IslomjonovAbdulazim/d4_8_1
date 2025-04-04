import 'dart:convert';

import 'package:d4_8_1/models/user_model.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/users";

  static Future<List<UserModel>> getUsers() async {
    Uri uri = Uri.parse(baseUrl);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List jsonList = List.from(jsonDecode(response.body));
      List<UserModel> models =
          jsonList.map((json) => UserModel.fromJson(json)).toList();
      return models;
    } else {
      return [];
    }
  }
}
