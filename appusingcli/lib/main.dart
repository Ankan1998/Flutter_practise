
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
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue,
            child: Text('Container2'),

          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
            child: Text('Container3'),

          ),
        ],
      ),
    ),
  ),
);