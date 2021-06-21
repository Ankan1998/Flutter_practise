import 'package:birderapp/models/birdlist_changenotifier.dart';
import 'package:birderapp/widgets/BirderApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// https://codeshare.io/LwnDvb
// Flutter packages
//https://pub.dev/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (_) => BirdListChangeNotifier(),
      child: MaterialApp(
        home: BirderApp(),
      ),
    ),
  );
}
