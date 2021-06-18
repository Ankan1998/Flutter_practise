import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class PostsService {
  void fetchPosts() async {
    var url = Uri.https('jsonplaceholder.typicode.com',
        'posts/10'); //first argument only domain, second argument posts
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    }
  }
}
