import 'package:birderapp/models/birdmodel.dart';
import 'package:flutter/material.dart';
//
// ignore: must_be_immutable
class BirdListWithListView extends StatelessWidget {
  final List<BirdModel> listofbirds = [
    BirdModel(
      id: 1,
      name: 'Hornbill',
      scientificName: 'Bucerotidae',
      imageUrl:
          'https://425a4737ivmv4froj2qpw6u1-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg',
    ),
    BirdModel(
      id: 2,
      name: 'Humming Bird',
      scientificName: 'Trochilidae',
      imageUrl:
          'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg',
    ),
    BirdModel(
      id: 3,
      name: 'Kingfisher',
      scientificName: 'Alcedinidae',
      imageUrl:
          'https://www.thespruce.com/thmb/XonXjEwO495Rxk1BwX4lrelXbuQ=/1333x1000/smart/filters:no_upscale()/oriental-dwarf-kingfisher-58518cef3df78c491e5694ce.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ...listofbirds.map( //... is a spread operator, creates temporary list and fetches elemeent one by one
          (bird) => ListTile(
            leading: Image(
              width: 100.0,
              fit: BoxFit.fitWidth,
              image: NetworkImage(bird.imageUrl),
            ),
            title: Text(
                bird.name,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              subtitle: Text(
                bird.scientificName,
                style: TextStyle(fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.delete,
                color: Colors.red[500],
              ),
          ),
        )
      ],
    );
  }
}
//ListTile -> leading, title, subtitle, trailing
// Image, name delete
