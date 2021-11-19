import 'profile.model.dart';

class UsersStateless {
  UsersStateless({
    this.userList,
    this.defaultFeeRateNanosPerKb,
    this.paramUpdaters,
  });

  final List<UserList>? userList;
  final int? defaultFeeRateNanosPerKb;
  final Map<String, dynamic>? paramUpdaters;

  factory UsersStateless.fromJson(Map<String, dynamic> json) => UsersStateless(
        userList: json["UserList"] == null
            ? List.empty()
            : List<UserList>.from(
                json["UserList"].map((x) => UserList.fromJson(x))),
        defaultFeeRateNanosPerKb: json["DefaultFeeRateNanosPerKB"],
        paramUpdaters: json["ParamUpdaters"],
      );

  Map<String, dynamic> toJson() => {
        "UserList": List<dynamic>.from(userList!.map((x) => x.toJson())),
        "DefaultFeeRateNanosPerKB": defaultFeeRateNanosPerKb,
        "ParamUpdaters": paramUpdaters,
      };
}

class UserList {
  UserList({
    this.publicKeyBase58Check,
    this.profileEntryResponse,
    this.utxos,
    this.balanceNanos,
    this.unminedBalanceNanos,
    this.publicKeysBase58CheckFollowedByUser,
    this.usersYouHodl,
    this.usersWhoHodlYouCount,
    this.hasPhoneNumber,
    this.canCreateProfile,
    this.blockedPubKeys,
    this.hasEmail,
    this.emailVerified,
    this.jumioStartTime,
    this.jumioFinishedTime,
    this.jumioVerified,
    this.jumioReturned,
    this.isAdmin,
    this.isSuperAdmin,
    this.isBlacklisted,
    this.isGraylisted,
    this.tutorialStatus,
    this.creatorCoinsPurchasedInTutorial,
    this.mustCompleteTutorial,
  });

  final String? publicKeyBase58Check;
  final Profile? profileEntryResponse;
  final dynamic utxos;
  final int? balanceNanos;
  final int? unminedBalanceNanos;
  final dynamic publicKeysBase58CheckFollowedByUser;
  final dynamic usersYouHodl;
  final int? usersWhoHodlYouCount;
  final bool? hasPhoneNumber;
  final bool? canCreateProfile;
  final dynamic blockedPubKeys;
  final bool? hasEmail;
  final bool? emailVerified;
  final int? jumioStartTime;
  final int? jumioFinishedTime;
  final bool? jumioVerified;
  final bool? jumioReturned;
  final bool? isAdmin;
  final bool? isSuperAdmin;
  final bool? isBlacklisted;
  final bool? isGraylisted;
  final String? tutorialStatus;
  final int? creatorCoinsPurchasedInTutorial;
  final bool? mustCompleteTutorial;

  factory UserList.fromJson(Map<String, dynamic> json) => UserList(
        publicKeyBase58Check: json["PublicKeyBase58Check"],
        profileEntryResponse: Profile.fromJson(json["ProfileEntryResponse"]),
        utxos: json["Utxos"],
        balanceNanos: json["BalanceNanos"],
        unminedBalanceNanos: json["UnminedBalanceNanos"],
        publicKeysBase58CheckFollowedByUser:
            json["PublicKeysBase58CheckFollowedByUser"],
        usersYouHodl: json["UsersYouHODL"],
        usersWhoHodlYouCount: json["UsersWhoHODLYouCount"],
        hasPhoneNumber: json["HasPhoneNumber"],
        canCreateProfile: json["CanCreateProfile"],
        blockedPubKeys: json["BlockedPubKeys"],
        hasEmail: json["HasEmail"],
        emailVerified: json["EmailVerified"],
        jumioStartTime: json["JumioStartTime"],
        jumioFinishedTime: json["JumioFinishedTime"],
        jumioVerified: json["JumioVerified"],
        jumioReturned: json["JumioReturned"],
        isAdmin: json["IsAdmin"],
        isSuperAdmin: json["IsSuperAdmin"],
        isBlacklisted: json["IsBlacklisted"],
        isGraylisted: json["IsGraylisted"],
        tutorialStatus: json["TutorialStatus"],
        creatorCoinsPurchasedInTutorial:
            json["CreatorCoinsPurchasedInTutorial"],
        mustCompleteTutorial: json["MustCompleteTutorial"],
      );

  Map<String, dynamic> toJson() => {
        "PublicKeyBase58Check": publicKeyBase58Check,
        "ProfileEntryResponse": profileEntryResponse?.toJson(),
        "Utxos": utxos,
        "BalanceNanos": balanceNanos,
        "UnminedBalanceNanos": unminedBalanceNanos,
        "PublicKeysBase58CheckFollowedByUser":
            publicKeysBase58CheckFollowedByUser,
        "UsersYouHODL": usersYouHodl,
        "UsersWhoHODLYouCount": usersWhoHodlYouCount,
        "HasPhoneNumber": hasPhoneNumber,
        "CanCreateProfile": canCreateProfile,
        "BlockedPubKeys": blockedPubKeys,
        "HasEmail": hasEmail,
        "EmailVerified": emailVerified,
        "JumioStartTime": jumioStartTime,
        "JumioFinishedTime": jumioFinishedTime,
        "JumioVerified": jumioVerified,
        "JumioReturned": jumioReturned,
        "IsAdmin": isAdmin,
        "IsSuperAdmin": isSuperAdmin,
        "IsBlacklisted": isBlacklisted,
        "IsGraylisted": isGraylisted,
        "TutorialStatus": tutorialStatus,
        "CreatorCoinsPurchasedInTutorial": creatorCoinsPurchasedInTutorial,
        "MustCompleteTutorial": mustCompleteTutorial,
      };
}
