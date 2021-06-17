import 'package:birderapp/models/birdmodel.dart';
import 'package:flutter/cupertino.dart';

class BirdListChangeNotifier extends ChangeNotifier {
  
  final List<BirdModel> listofbirds = [
    BirdModel(
        id: 1,
        name: 'Hornbill',
        scientificName: 'Bucerotidae',
        likes: 100,
        isFavorite: false,
        imageUrl:
            'https://425a4737ivmv4froj2qpw6u1-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg',
        info:
            'The hornbills are a family of bird found in tropical and subtropical Africa, Asia and Melanesia. They are characterized by a long, down-curved bill which is frequently brightly colored and sometimes has a casque on the upper mandible.'),
    BirdModel(
        id: 2,
        name: 'Humming Bird',
        scientificName: 'Trochilidae',
        likes: 200,
        isFavorite: false,
        imageUrl:
            'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg',
        info:
            'Hummingbirds are birds native to the Americas and comprise the biological family Trochilidae. With about 360 species, they occur from Alaska to Tierra del Fuego, but the vast majority of the species is found in the tropics. They are small birds, with most species measuring 7.5–13 cm (3–5 in) in length. The smallest extant hummingbird species is the 5 cm (2.0 in) bee hummingbird, which weighs less than 2.0 g (0.07 oz). The largest hummingbird species is the 23 cm (9.1 in) giant hummingbird, weighing 18–24 grams (0.63–0.85 oz). They are specialized for feeding on flower nectar, but all species consume flying insects or spiders.'),
    BirdModel(
        id: 3,
        name: 'Kingfisher',
        scientificName: 'Alcedinidae',
        likes: 500,
        isFavorite: false,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/7/72/Alcedo_azurea_-_Julatten.jpg',
        info:
            'Kingfishers or Alcedinidae are a family of small to medium-sized, brightly colored birds in the order Coraciiformes. They have a cosmopolitan distribution, with most species found in the tropical regions of Africa, Asia, and Oceania. The family contains 114 species and is divided into three subfamilies and 19 genera.'),
  ];

  void deleteABird(BirdModel bird) {
    listofbirds.removeWhere((theBird) => bird.id == theBird.id);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void addNewBirdToList(BirdModel newBird) {
    listofbirds.add(newBird);
    notifyListeners();
  }

  void incrementLikes(BirdModel bird) {
    bird.likes += 1;
    notifyListeners();
  }
    
  void changeFavorite(BirdModel bird) {
    
      bird.isFavorite = !bird.isFavorite;
      notifyListeners();
    
  }
  
}
