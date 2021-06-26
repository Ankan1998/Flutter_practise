import 'dart:convert';

import 'package:birderapp/models/birdmodel.dart';
import 'package:http/http.dart' as http;

class BirdsService {
  // addABirdtoFirebaseDB()
  // getAllBirds()

  Future<String> addABirdtoFirebaseDB(BirdModel newBird) async {
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
          "imageUrl": newBird.imageUrl
        }),
      );

      if (response.statusCode == 200) {
        print('Bird Inserted !');
        return "success";
      } else {
        return "";
      }
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<BirdModel>> getAllBirdsFromFirebaseDB() async {
    try {
      final List<BirdModel> loadedBirds = [];
      // do not hard code urls is bad practise ! Instead accept them as parameters
      const _domainString =
          "ankansapientbirderapp-default-rtdb.asia-southeast1.firebasedatabase.app";
      const _urlString = "birds.json";
      Uri url = Uri.https(_domainString, _urlString);
      var response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        print('Birds Received !');
        var extractedBirds = jsonDecode(response.body) as Map<String, dynamic>;

        // {"key":{id:1,.....}}
        extractedBirds.forEach((birdUniqueKey, eachBird) {
          loadedBirds.add(BirdModel.fromJSON(eachBird));
        });
        return loadedBirds;
      }
    } catch (e) {
      print(e);
    }
  }
}
