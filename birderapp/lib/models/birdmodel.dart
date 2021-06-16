import 'package:flutter/material.dart';

class BirdModel {
  final int id;
  final String name;
  final String scientificName;
  final String imageUrl;

  BirdModel({required this.id, required this.name, required this.scientificName, required this.imageUrl});
}


// Demo Stateful widget
// Both classes get combined together

// class FirstStateFulWidget extends StatefulWidget {
//   const FirstStateFulWidget({ Key? key }) : super(key: key);

//   @override
//   _FirstStateFulWidgetState createState() => _FirstStateFulWidgetState();
// }

// class _FirstStateFulWidgetState extends State<FirstStateFulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }