import 'package:deso_sdk/src/model/user/profile.model.dart';

class LikesForPost {
  LikesForPost({
    this.likers,
  });

  final List<Profile>? likers;

  factory LikesForPost.fromJson(Map<String, dynamic> json) => LikesForPost(
        likers: json["Likers"] == null
            ? List.empty()
            : List<Profile>.from(
                json["Likers"].map((x) => Profile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Likers": List<dynamic>.from(likers!.map((x) => x.toJson())),
      };
}
