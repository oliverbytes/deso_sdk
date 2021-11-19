import 'package:deso_sdk/src/model/user/profile.model.dart';

class RepostsForPost {
  RepostsForPost({
    this.reposters,
    this.reclouters,
  });

  final List<Profile>? reposters;
  final List<Profile>? reclouters;

  factory RepostsForPost.fromJson(Map<String, dynamic> json) => RepostsForPost(
        reposters: json["Reposters"] == null
            ? List.empty()
            : List<Profile>.from(
                json["Reposters"].map((x) => Profile.fromJson(x))),
        reclouters: json["Reclouters"] == null
            ? List.empty()
            : List<Profile>.from(
                json["Reclouters"].map((x) => Profile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Reposters": List<dynamic>.from(reposters!.map((x) => x.toJson())),
        "Reclouters": List<dynamic>.from(reclouters!.map((x) => x.toJson())),
      };
}
