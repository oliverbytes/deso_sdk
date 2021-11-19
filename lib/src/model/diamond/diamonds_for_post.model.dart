import 'package:deso_sdk/src/model/user/profile.model.dart';

class DiamondsForPost {
  DiamondsForPost({
    this.diamondSenders,
  });

  final List<DiamondSender>? diamondSenders;

  factory DiamondsForPost.fromJson(Map<String, dynamic> json) =>
      DiamondsForPost(
        diamondSenders: json["DiamondSenders"] == null
            ? List.empty()
            : List<DiamondSender>.from(
                json["DiamondSenders"].map((x) => DiamondSender.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "DiamondSenders":
            List<dynamic>.from(diamondSenders!.map((x) => x.toJson())),
      };
}

class DiamondSender {
  DiamondSender({
    this.diamondSenderProfile,
    this.diamondLevel,
  });

  final Profile? diamondSenderProfile;
  final int? diamondLevel;

  factory DiamondSender.fromJson(Map<String, dynamic> json) => DiamondSender(
        diamondSenderProfile: Profile.fromJson(json["DiamondSenderProfile"]),
        diamondLevel: json["DiamondLevel"],
      );

  Map<String, dynamic> toJson() => {
        "DiamondSenderProfile": diamondSenderProfile?.toJson(),
        "DiamondLevel": diamondLevel,
      };
}
