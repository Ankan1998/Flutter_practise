
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        backgroundColor: Colors.teal.shade300,
      ),
      body: Column(
        children: <Widget>
        [
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
            child: Text('Container1'),

          ),
        ],
      ),
    ),
  ),
);