
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
          Image(
            image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVAutAWUHAE6LYPkEJcFBqb6U8FTTDdGG4KnooNepcmDNRyFl6-LLTbJWu-n2TwyDOjqo&usqp=CAU'
            ),
          ),

        ],
      ),
    ),
  ),
);