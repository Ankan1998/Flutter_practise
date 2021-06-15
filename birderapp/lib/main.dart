import 'package:flutter/material.dart';
// https://codeshare.io/LwnDvb


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Birder App'),
            centerTitle: true,
            backgroundColor: Colors.teal[700],
          ),
          body: Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            margin: EdgeInsets.all(10.0),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image(
                    width: 100.00,
                    image: AssetImage('images/hornbill.jpg')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hornbill',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      Text(
                        'Bucerotidae',
                        style: TextStyle(
                          color:Colors.purpleAccent,
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}
