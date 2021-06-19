import 'dart:convert';
import 'package:asyncprogfutureflutter/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostsService {
  Future<List<PostModel>?> fetchAllPosts() async {
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // when async get call is a success
      // var data = PostModel.fromJson(
      //   jsonDecode(response.body),
      // );
      var postList = (jsonDecode(response.body) as List)
          .map(
            ((post) => PostModel.fromJson(
                  post,
                )),
          )
          .toList();
      return postList;
      // return data;
    } else {
      return null;
    }
  }

  Future<PostModel?> fetchPostsById(int id) async {
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts/$id');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // when async get call is a success
      var data = PostModel.fromJson(
        jsonDecode(response.body),
      );
      return data;
    } else {
      return null;
    }
  }
}