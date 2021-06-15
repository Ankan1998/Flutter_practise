import 'package:flutter/material.dart';

class BirdListWithRowsCols extends StatelessWidget {
  const BirdListWithRowsCols({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image(
                    width: 100.00,
                    image: AssetImage('images/hornbill.jpg')),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hornbill',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      Text(
                        'Bucerotidae',
                        style: TextStyle(
                          color:Colors.grey[700],
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                        )
                      )
                    ],
                  ),
                ),
              
              ],
            );
  }
}