import 'package:birderapp/models/birdlist_changenotifier.dart';
import 'package:birderapp/screens/add_new_bird_screen.dart';
// import 'package:birderapp/widgets/birdcount.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'BirdListWithListView.dart';

class BirderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BirdListChangeNotifier(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Birder App'),
            centerTitle: true,
            backgroundColor: Colors.teal[700],
          ),
          body: AddNewBird(),
        ),
      ),
    );
  }
}