class PostModel {
  final int id;
  final String userId;
  final String title;
  final String body;

  PostModel(
    {required this.id,
    required this.userId,
    required this.title,
    required this.body}
  );
}
