import 'package:flutter/material.dart';

class BirdListWithListView extends StatelessWidget {
  List<String> listofbirds = ["Hornbill", "parrot", "kingfisher"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ...listofbirds.map( //... is a spread operator, creates temporary list and fetches elemeent one by one
          (bird) => Text(bird),
        )
      ],
    );
  }
}
