import 'package:birderapp/models/birdmodel.dart';
import 'package:flutter/material.dart';

class BirdListWithListView extends StatefulWidget {
  @override
  _BirdListWithListViewState createState() => _BirdListWithListViewState();
}

class _BirdListWithListViewState extends State<BirdListWithListView> {
  final List<BirdModel> listofbirds = [
    BirdModel(
      id: 1,
      //like: 100,
      name: 'Hornbill',
      scientificName: 'Bucerotidae',
      imageUrl:
          'https://425a4737ivmv4froj2qpw6u1-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg',
    ),
    BirdModel(
      id: 2,
      //like: 298,
      name: 'Humming Bird',
      scientificName: 'Trochilidae',
      imageUrl:
          'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg',
    ),
    BirdModel(
      id: 3,
      //like: 217,
      name: 'Kingfisher',
      scientificName: 'Alcedinidae',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/7/72/Alcedo_azurea_-_Julatten.jpg',
    ),
  ];

  void deleteABird(BirdModel bird) {
    setState(() {
      // Any changes should be done should be inside setState
      print("delete id: ${bird.id}");
      listofbirds.removeWhere((theBird) => bird.id == theBird.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ...listofbirds.map(
          (bird) => GestureDetector(
            onHorizontalDragEnd: (_) {
              //print('U dragged');
              deleteABird(bird);
            },
            child: Card(
              elevation: 10,
              child: ListTile(
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
                trailing: InkWell(
                  child: Icon(
                    Icons.delete,
                    color: Colors.red[500],
                  ),
                  onTap: () {
                    deleteABird(bird);
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class BirdListWithListView extends StatelessWidget {
//   final List<BirdModel> listofbirds = [
//     BirdModel(
//       id: 1,
//       name: 'Hornbill',
//       scientificName: 'Bucerotidae',
//       imageUrl:
//           'https://425a4737ivmv4froj2qpw6u1-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg',
//     ),
//     BirdModel(
//       id: 2,
//       name: 'Humming Bird',
//       scientificName: 'Trochilidae',
//       imageUrl:
//           'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg',
//     ),
//     BirdModel(
//       id: 3,
//       name: 'Kingfisher',
//       scientificName: 'Alcedinidae',
//       imageUrl:
//           'https://upload.wikimedia.org/wikipedia/commons/7/72/Alcedo_azurea_-_Julatten.jpg',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ...listofbirds.map(
//           (bird) => Card(
//             elevation: 10,
//             child: ListTile(
//               leading: Image(
//                 width: 100.0,
//                 fit: BoxFit.fitWidth,
//                 image: NetworkImage(bird.imageUrl),
//               ),
//               title: Text(
//                 bird.name,
//                 style: TextStyle(
//                   fontSize: 25.0,
//                 ),
//               ),
//               subtitle: Text(
//                 bird.scientificName,
//                 style: TextStyle(fontSize: 18.0),
//               ),
//               trailing: InkWell(
//                 child: Icon(
//                   Icons.delete,
//                   color: Colors.red[500],
//                 ),
//                 onTap: () {
//                   print("delete id: ${bird.id}");
//                   listofbirds.removeWhere((theBird) => bird.id == theBird.id);
//                 },
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

//List view make page scrollable
//Stateless widget doesnot update UI (Static)

// trailing: Column(
//                 children: <Widget>[
//                   InkWell(
//                     child: Icon(
//                       Icons.thumb_up_outlined,
//                       color: Colors.red[500],
//                     ),
//                     onTap: () {
//                       setState(() {
//                         // Any changes should be done should be inside setState
//                         //print("delete id: ${bird.id}");
//                         //listofbirds.removeWhere((theBird) => bird.id == theBird.id);
//                         for (var i in listofbirds) {
//                           if (i.id == bird.id) {
//                             i.like = bird.like + 1;
//                           }
//                         }
//                       });
//                     },
//                   ),
//                   Text(
//                     '${bird.like}',
//                     style: TextStyle(fontSize: 18.0),
//                   ),
//                 ],
//               ),
