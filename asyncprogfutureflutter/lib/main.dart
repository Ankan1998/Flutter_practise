import 'package:asyncprogfutureflutter/services/post_services.dart';
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Posts(title: 'All posts'),
    );
  }
}

class Posts extends StatelessWidget {
  final String title;
  PostsService _srvObject = PostsService();
  Posts({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 300.0,
      child: Column(
        children: [
          Text(title),
          ElevatedButton(
            onPressed: () {
              _srvObject.fetchPosts();
            },
            child: Text('Get Post'),
          )
        ],
      ),
    );
  }
}
