import 'profile.model.dart';

class FollowsStateless {
  FollowsStateless({
    this.publicKeyToProfileEntry,
    this.numFollowers,
  });

  final Map<String, Profile>? publicKeyToProfileEntry;
  final int? numFollowers;

  factory FollowsStateless.fromJson(Map<String, dynamic> json) =>
      FollowsStateless(
        publicKeyToProfileEntry: Map.from(json["PublicKeyToProfileEntry"])
            .map((k, v) => MapEntry<String, Profile>(k, Profile.fromJson(v))),
        numFollowers: json["NumFollowers"],
      );

  Map<String, dynamic> toJson() => {
        "PublicKeyToProfileEntry": Map.from(publicKeyToProfileEntry!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "NumFollowers": numFollowers,
      };
}
