import 'package:flutter/foundation.dart';

class UserModel {
  
  final String name;
  final String type;
  final String avatarUrl;
  
  

  UserModel(
      {
      @required this.name,
      @required this.type,
      @required this.avatarUrl,
});

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
        
        name: jsonData["login"],
        type: jsonData["title"],
        avatarUrl: jsonData["avatar_url"]);
  }
}
