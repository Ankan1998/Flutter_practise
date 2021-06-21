import 'dart:convert';

import 'package:birderapp/models/birdmodel.dart';
import 'package:http/http.dart' as http;

class BirdsService {
  // addABirdtoFirebaseDB()
  // getAllBirds()

  //   getAllBirds(BirdModel newBird) async {
  //   try {
  //     // do not hard code urls is bad practise ! Instead accept them as parameters
  //     const _domainString =
  //         "ankansapientbirderapp-default-rtdb.asia-southeast1.firebasedatabase.app";
  //     const _urlString = "birds.json";
  //     Uri url = Uri.https(_domainString, _urlString);
  //     var response = await http.get(
  //       url,
  //       body: json.encode({
  //         "id": newBird.id,
  //         "name": newBird.name,
  //         "scientificName": newBird.scientificName,
  //         "likes": 200,
  //         "info": newBird.info,
  //         "url": newBird.imageUrl
  //       }),
  //     );

  //     if (response.statusCode == 200) {
  //       print('Bird Inserted !');
  //       return "success";
  //     }
  //   } catch (e) {
  //     print(e);
  //     return e;
  //   }
  // }

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
          "info": newBird.info,
          "url": newBird.imageUrl
        }),
      );

      if (response.statusCode == 200) {
        print('Bird Inserted !');
        return "success";
      }
    } catch (e) {
      print(e);
      return e;
    }
  }
}
