
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, //Align all other container according to size 
        //stretch stretch all container to its max width
        children: <Widget>
        [
          
          Container(
            height: 1000.0,
            width: 100.0,
            color: Colors.green,
            

          ),
          Center(
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
            

          ),
          ),
          Center(
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
            

          ),
          ),
          Container(
            height: 1000.0,
            width: 100.0,
            color: Colors.blue,
            

          ),

        ],
        
      ),
      
    ),
  ),
);


// Use widget inspector to inspect size