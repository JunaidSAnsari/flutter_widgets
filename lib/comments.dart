class Comments {
  late int postId;
  late int id;
  late String name;
  late String email;
  late String body;

  Comments(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  factory Comments.fromJson(Map<String, dynamic> json){
    return Comments(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"]);
  }
}
