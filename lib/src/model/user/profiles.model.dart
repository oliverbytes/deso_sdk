import 'profile.model.dart';

class Profiles {
  Profiles({
    this.profilesFound,
    this.nextPublicKey,
  });

  final List<Profile>? profilesFound;
  final String? nextPublicKey;

  factory Profiles.fromJson(Map<String, dynamic> json) => Profiles(
        profilesFound: json["ProfilesFound"] == null
            ? List.empty()
            : List<Profile>.from(
                json["ProfilesFound"].map((x) => Profile.fromJson(x)),
              ),
        nextPublicKey: json["NextPublicKey"],
      );

  Map<String, dynamic> toJson() => {
        "ProfilesFound":
            List<dynamic>.from(profilesFound!.map((x) => x.toJson())),
        "NextPublicKey": nextPublicKey,
      };
}
