class BirdModel {
  final int id;
  int likes;
  final String name;
  final String scientificName;
  final String info;
  final String imageUrl;
  bool isFavorite;

  BirdModel(
      {this.isFavorite = false,
      this.id,
      this.likes,
      this.info,
      this.name,
      
      this.scientificName,
      this.imageUrl});

   factory BirdModel.fromJSON(Map<String, dynamic> jsonData) {
    return BirdModel(
      id: jsonData["id"],
      name: jsonData["name"],
      scientificName: jsonData["scientificName"],
      imageUrl: jsonData["imageUrl"],
      info: jsonData["info"],
      likes: jsonData["likes"],
      //isFavorite: jsonData['isFavorite']
    );
  }
}

// Demo Stateful widget
// Both classes get combined together

// class FirstStateFulWidget extends StatefulWidget {
//   const FirstStateFulWidget({ Key? key }) : super(key: key);

//   @override
//   _FirstStateFulWidgetState createState() => _FirstStateFulWidgetState();
// }

// class _FirstStateFulWidgetState extends State<FirstStateFulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
