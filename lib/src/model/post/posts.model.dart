import 'post.model.dart';

class Posts {
  Posts({
    this.postsFound,
  });

  final List<Post>? postsFound;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        postsFound: json["PostsFound"] == null
            ? List.empty()
            : List<Post>.from(json["PostsFound"].map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "PostsFound": List<dynamic>.from(postsFound!.map((x) => x.toJson())),
      };
}
