import 'package:asyncprogfutureflutter/models/post_model.dart';
import 'package:asyncprogfutureflutter/services/post_services.dart';
import 'package:flutter/material.dart';

class PostsFutureBuilder extends StatefulWidget {
  @override
  _PostsFutureBuilderState createState() => _PostsFutureBuilderState();
}

class _PostsFutureBuilderState extends State<PostsFutureBuilder> {
  late Future<List<PostModel>?> _postModelListFuture;
  final PostsService _srvObject = PostsService();
  //late List<PostModel> list_p;
  //late PostModel i;
  @override
  void initState() {
    super.initState();
    _postModelListFuture = _srvObject.fetchAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostModel>?>(
        future: _postModelListFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              'Data Received : ${snapshot.data!}',
            );
          } else if (snapshot.hasError) {
            return Text('Data Not Received ! Got Error Instead !');
          }
          return CircularProgressIndicator();
        });
  }
}
