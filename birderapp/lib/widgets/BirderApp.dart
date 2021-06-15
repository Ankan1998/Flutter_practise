import 'package:birderapp/widgets/BirdListWithListView.dart';
import 'package:flutter/material.dart';

class BirderApp extends StatelessWidget {
  const BirderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Birder App'),
            centerTitle: true,
            backgroundColor: Colors.teal[700],
          ),
          body: BirdListWithListView(),
        ),
    );
  }
}
