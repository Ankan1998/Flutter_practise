import 'package:birderapp/widgets/bird_list_with_rows_cols.dart';
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
          body: Column(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: <Widget>[
              BirdListWithRowsCols(),
              BirdListWithRowsCols()
              
            ]
          )),
    ),
  );
}


// Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               // crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Image(
//                     width: 100.00,
//                     image: AssetImage('images/hornbill.jpg')),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     left: 10.0,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Hornbill',
//                         style: TextStyle(
//                           fontSize: 30.0,
//                           fontFamily: 'Raleway',
//                           fontWeight: FontWeight.bold,
//                         )
//                       ),
//                       Text(
//                         'Bucerotidae',
//                         style: TextStyle(
//                           color:Colors.grey[700],
//                           fontSize: 20.0,
//                           fontStyle: FontStyle.italic,
//                         )
//                       )
//                     ],
//                   ),
//                 ),
              
//               ],
//             ),