import 'post.model.dart';

class PostsForPublicKey {
  PostsForPublicKey({
    this.posts,
    this.lastPostHashHex,
  });

  final List<Post>? posts;
  final String? lastPostHashHex;

  factory PostsForPublicKey.fromJson(Map<String, dynamic> json) =>
      PostsForPublicKey(
        posts: json["Posts"] == null
            ? List.empty()
            : List<Post>.from(json["Posts"].map((x) => Post.fromJson(x))),
        lastPostHashHex: json["LastPostHashHex"],
      );

  Map<String, dynamic> toJson() => {
        "Posts": List<dynamic>.from(posts!.map((x) => x.toJson())),
        "LastPostHashHex": lastPostHashHex,
      };
}
