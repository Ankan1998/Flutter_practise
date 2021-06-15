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
                    image: NetworkImage(
                        'https://425a4737ivmv4froj2qpw6u1-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hornbill',
                      ),
                      Text(
                        'Bucerotidae',
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
