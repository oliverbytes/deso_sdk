import 'profile.model.dart';

class SingleProfile {
  SingleProfile({
    this.profile,
    this.isBlacklisted,
    this.isGraylisted,
  });

  final Profile? profile;
  final bool? isBlacklisted;
  final bool? isGraylisted;

  factory SingleProfile.fromJson(Map<String, dynamic> json) => SingleProfile(
        profile: Profile.fromJson(json["Profile"]),
        isBlacklisted: json["IsBlacklisted"],
        isGraylisted: json["IsGraylisted"],
      );

  Map<String, dynamic> toJson() => {
        "Profile": profile?.toJson(),
        "IsBlacklisted": isBlacklisted,
        "IsGraylisted": isGraylisted,
      };
}
