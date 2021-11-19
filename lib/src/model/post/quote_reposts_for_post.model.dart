import 'post.model.dart';

class QuoteRepostsForPost {
  QuoteRepostsForPost({
    this.quoteReposts,
    this.quoteReclouts,
  });

  final List<Post>? quoteReposts;
  final List<Post>? quoteReclouts;

  factory QuoteRepostsForPost.fromJson(Map<String, dynamic> json) =>
      QuoteRepostsForPost(
        quoteReposts: json["QuoteReposts"] == null
            ? List.empty()
            : List<Post>.from(
                json["QuoteReposts"].map((x) => Post.fromJson(x))),
        quoteReclouts: json["QuoteReclouts"] == null
            ? List.empty()
            : List<Post>.from(
                json["QuoteReclouts"].map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "QuoteReposts":
            List<dynamic>.from(quoteReposts!.map((x) => x.toJson())),
        "QuoteReclouts":
            List<dynamic>.from(quoteReclouts!.map((x) => x.toJson())),
      };
}
