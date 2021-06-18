import 'package:birderapp/models/birdlist_changenotifier.dart';
import 'package:birderapp/screens/add_new_bird_screen.dart';
import 'package:birderapp/widgets/BirdListWithListView.dart';
// import 'package:birderapp/widgets/birdcount.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class BirderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BirdListChangeNotifier>(
      builder: (context, birdCNinstance, child) => Scaffold(
        appBar: AppBar(
          title: Text('Birder App'),
          centerTitle: true,
          backgroundColor: Colors.teal[700],
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () => navigateToAddNewBirdScreen(context),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        body: BirdListWithListView(),
        floatingActionButton: birdCNinstance.listofbirds.length < 5
            ? FloatingActionButton(
                onPressed: () {
                  // Navigate to AddNewBirdScreen !
                  navigateToAddNewBirdScreen(context);
                },
                backgroundColor: Colors.teal[700],
                child: Icon(Icons.add),
            )
            : null,
      ),
    );
  }

  void navigateToAddNewBirdScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddNewBird(),
      ),
    );
  }


}



