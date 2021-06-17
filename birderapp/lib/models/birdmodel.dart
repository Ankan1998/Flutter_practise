class BirdModel {
  final int id;
  int likes;
  final String name;
  final String scientificName;
  final String info;
  final String imageUrl;
  bool isFavorite = false;

  BirdModel(
      {required this.id,
      required this.likes,
      required this.info,
      required this.name,
      required this.isFavorite,
      required this.scientificName,
      required this.imageUrl});
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
