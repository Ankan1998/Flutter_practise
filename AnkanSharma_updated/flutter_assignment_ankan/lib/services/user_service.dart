import 'dart:convert';

import 'package:flutter_assignment_ankan/model/usermodel.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<UserModel> fetchPostsByLogin(String login) async {
    var url = Uri.https('api.github.com', 'users/$login');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // when async get call is a success
      var data = UserModel.fromJson(
        jsonDecode(response.body),
      );
      print(data.name);
      return data;
    } else {
      return null;
    }
  }
}
