import 'package:birderapp/widgets/bird_list_with_rows_cols.dart';
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
          body: Column(
              // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              children: <Widget>[
                BirdListWithRowsCols(),
                BirdListWithRowsCols()
              ])),
    );
  }
}
