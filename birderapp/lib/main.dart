import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Container(
                child: Image(
                  image: NetworkImage(
            'https://lafeber.com/pet-birds/wp-content/uploads/2018/06/Blue-and-Gold-Macaw.jpg'
                  ),
                ),
                height: 200,
                width: 205
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 100.0,
                width:205.0,
                color: Colors.cyan,
                child: Center(child: Text('Macaw',style: TextStyle(fontWeight: FontWeight.bold)))
              ),
              Container(
                height: 100.0,
                width:205.0,
                color: Colors.green,
                child: Center(child: Text('Ara ararauna',style: TextStyle(fontWeight: FontWeight.bold)))
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);


