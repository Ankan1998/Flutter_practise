import 'dart:convert';

import 'package:birderapp/models/birdmodel.dart';
import 'package:http/http.dart' as http;

class BirdsService {
  // addABirdtoFirebaseDB()
  // getAllBirds()

  addABirdtoFirebaseDB(BirdModel newBird) async {
    try {
      // do not hard code urls is bad practise ! Instead accept them as parameters
      const _domainString =
          "ankansapientbirderapp-default-rtdb.asia-southeast1.firebasedatabase.app";
      const _urlString = "birds.json";
      Uri url = Uri.https(_domainString, _urlString);
      var response = await http.post(
        url,
        body: json.encode({
          "id": newBird.id,
          "name": newBird.name,
          "scientificName": newBird.scientificName,
          "likes": 200,
          "info": newBird.info
        }),
      );

      if (response.statusCode == 200) {
        print('Bird Inserted !');
      }
    } catch (e) {
      print(e);
    }
  }
}