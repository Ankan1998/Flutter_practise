import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Nice Content'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
        child: Text(
          "I am loving this app",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.greenAccent[700],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
          backgroundColor: Colors.cyan[700]
      ),
    ),
  ));
}

