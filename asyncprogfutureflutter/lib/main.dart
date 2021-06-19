import 'package:asyncprogfutureflutter/widgets/posts_with_future_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts with Future Builder'),
        ),
        body: Center(
          child: PostsFutureBuilder()
        ),
      ),
    );
  }
}

// class Posts extends StatelessWidget {
//   final String title;
//   PostsService _srvObject = PostsService();
//   Posts({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Container(
//         height: 300.0,
//         width: 300.0,
//         child: Column(
//           children: [
//             Text(title),
//             ElevatedButton(
//               onPressed: () {
//                 Future<PostModel?> futurePostModelObj = _srvObject.fetchPosts();
//                 futurePostModelObj.then(
//                   (value) =>
//                       print('Displaying data from Widget -> ${value!.title}'),
//                 );

//                 print('Waiting for data !');
//               },
//               child: Text('Get Post'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Posts extends StatefulWidget {
//   //const Posts({ Key? key }) : super(key: key);
//   final String title;
//   PostsService _srvObject = PostsService();
//   Posts({required this.title});
//   //List<PostModel> list_;
//   @override
//   _PostsState createState() => _PostsState();
// }

// class _PostsState extends State<Posts> {
//   //   void showall() {
//   //   setState(() {

//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         height: 300.0,
//         width: 300.0,
//         child: Column(
//           children: [
//             Text(widget.title),
//             ElevatedButton(
//               onPressed: () {
//                 Future<PostModel?> futurePostModelObj =
//                     widget._srvObject.fetchPosts();
//                 futurePostModelObj.then(
//                   (value) =>
//                       print('Displaying data from Widget -> ${value!.title}'),
//                 );

//                 print('Waiting for data !');
//                 // setState(() {
//                 //   print(value!.title);
//                 // });
//               },
//               child: Text('Get Post'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
