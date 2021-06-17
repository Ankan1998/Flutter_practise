import 'package:birderapp/models/birdlist_changenotifier.dart';
import 'package:birderapp/models/birdmodel.dart';
import 'package:birderapp/widgets/birdcount.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirdDetails extends StatefulWidget {
  //const BirdDetails({ Key? key }) : super(key: key);
  final BirdModel theBird;
  BirdDetails({required this.theBird});

  @override
  _BirdDetailsState createState() => _BirdDetailsState();
}

class _BirdDetailsState extends State<BirdDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Consumer<BirdListChangeNotifier>(
        builder: (context, instanceCN, child) => Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: 'birdHeroFly-${widget.theBird.id}',
                      child: Image.network(widget.theBird.imageUrl),
                    ),
                    ListTile(
                      title: Text(
                        widget.theBird.name,
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        widget.theBird.scientificName,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              instanceCN.changeFavorite(widget.theBird);
                            },
                            child: Icon(
                              widget.theBird.isFavorite == true
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: Colors.red[900],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 18.0),
                            child: Column(
                              children: <Widget>[
                                Text(widget.theBird.likes.toString()),
                                InkWell(
                                  child: Icon(
                                    Icons.thumb_up_outlined,
                                    color: Colors.blue,
                                  ),
                                  onTap: () {
                                    instanceCN.incrementLikes(widget.theBird);
                                    print(widget.theBird.likes);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(widget.theBird.info,
                            style: TextStyle(
                                color: Colors.grey[700],
                                height: 1.5,
                                fontSize: 15.0)))
                  ], // using widget. Access member variable of BirdDetail class
                ),
              ],
            ),
          ),
        ),
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
