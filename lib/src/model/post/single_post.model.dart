import 'post.model.dart';

class SinglePost {
  SinglePost({
    this.postFound,
  });

  final Post? postFound;

  factory SinglePost.fromJson(Map<String, dynamic> json) => SinglePost(
        postFound: Post.fromJson(json["PostFound"]),
      );

  Map<String, dynamic> toJson() => {
        "PostFound": postFound?.toJson(),
      };
}
