import 'package:birderapp/models/bird_details_model.dart';
import 'package:birderapp/models/birdmodel.dart';
import 'package:flutter/material.dart';

class BirdDetails extends StatefulWidget {
  //const BirdDetails({ Key? key }) : super(key: key);
  final BirdModel theBird;
  BirdDetails({required this.theBird});
    final List<BirdDetailModel> birddetail = [
    BirdDetailModel(
      //id: 1,
      //like: 100,
      name: 'Hornbill',
      scientificName: 'Bucerotidae',
      details: 'dsfiyhhhhhhhhhhhhhhhhhcthseynchsvthdrnthrhtvncishtsh',
      imgurl:
          'https://425a4737ivmv4froj2qpw6u1-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg',
    ),
    BirdDetailModel(
      //id: 2,
      //like: 298,
      name: 'Humming Bird',
      scientificName: 'Trochilidae',
      details: 'dsvsrvtdrbhhhhhhcthseynchsvthdrfhgdfghnthrhtvncishtsh',
      imgurl:
          'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg',
    ),
    BirdDetailModel(
      //id: 3,
      //like: 217,
      name: 'Kingfisher',
      scientificName: 'Alcedinidae',
      details: '124234w3f68h79vthdrnthrhtvncishtsh',
      imgurl:
          'https://upload.wikimedia.org/wikipedia/commons/7/72/Alcedo_azurea_-_Julatten.jpg',
    ),
  ];

  @override
  _BirdDetailsState createState() => _BirdDetailsState();
}

class _BirdDetailsState extends State<BirdDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bird Details'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Container(
        child: Text("Bird is ${widget.theBird.name}")
      ),
    );
  }
}

// Column(
//                     children: <Widget>[
//                       Text(bird.likes.toString()),
//                       InkWell(
//                         child: Icon(
//                           Icons.thumb_up_outlined,
//                           color: Colors.blue,
//                         ),
//                         onTap: () {
//                           setState(() {
//                             bird.likes += 1;
//                             print(bird.likes);
//                           });
//                         },
//                       )
//                     ],
//                   ),