class PostModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory PostModel.fromJson(Map<String, dynamic> jsonData) {
    return PostModel(
      id: jsonData['id'],
      userId: jsonData['userId'],
      title: jsonData['title'],
      body: jsonData['body'],
    );
  }
}
