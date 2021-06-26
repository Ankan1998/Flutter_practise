import 'package:flutter/material.dart';
import 'package:flutter_assignment_ankan/screens/add_new_user.dart';
import 'package:flutter_assignment_ankan/widgets/githome.dart';
import 'package:provider/provider.dart';

import 'model/userlist_changenotifier.dart';

void main() {
  
  
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserListChangeNotifier(),
        child: MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.teal,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                    fontSize: 20.0),
              ),
        ),
        home: GitApp(),

        routes: {
          GitApp.routeName: (ctx) => GitApp(),
          AddNewUser.routeName: (ctx) => AddNewUser(),
          
        },
      ),
    ),
  );
}