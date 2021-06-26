import 'package:flutter_assignment_ankan/model/usermodel.dart';
import 'package:flutter_assignment_ankan/services/user_service.dart';

import 'package:flutter/cupertino.dart';

class UserListChangeNotifier extends ChangeNotifier {
  List<UserModel> listofusers = [];
  final UserService _srvObject = UserService();

  void addNewUserToList(UserModel newUser) async {
    //listofusers.add(newuser); // service !
    var futureOfPostStatus = await _srvObject.fetchPostsByLogin(newUser.name);
    // ignore: unrelated_type_equality_checks
    print(futureOfPostStatus);
    listofusers.add(newUser);
    print(listofusers);
    notifyListeners();
    // if (futureOfPostStatus == "success") {
    //   listofusers.add(newUser);
      
    // }
  }
}
