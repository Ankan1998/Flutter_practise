import 'package:asyncprogfutureflutter/models/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsService {
  void fetchPosts() async {
    var url = Uri.https('jsonplaceholder.typicode.com',
        'posts/10'); //first argument only domain, second argument posts
    print("getting ready");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      //print(response.body);
      //print(json.decode(response.body));
      var data = PostModel.fromJson(
        jsonDecode(response.body),
      );
      print(data.title);
    }
  }
}
