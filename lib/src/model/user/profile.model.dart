class Profile {
  Profile({
    this.publicKeyBase58Check,
    this.username,
    this.description,
    this.isHidden,
    this.isReserved,
    this.isVerified,
    this.comments,
    this.posts,
    this.coinEntry,
    this.coinPriceDeSoNanos,
    this.coinPriceBitCloutNanos,
    this.usersThatHodl,
    this.isFeaturedTutorialWellKnownCreator,
    this.isFeaturedTutorialUpAndComingCreator,
  });

  final String? publicKeyBase58Check;
  final String? username;
  final String? description;
  final bool? isHidden;
  final bool? isReserved;
  final bool? isVerified;
  final dynamic comments;
  final dynamic posts;
  final CoinEntry? coinEntry;
  final int? coinPriceDeSoNanos;
  final int? coinPriceBitCloutNanos;
  final dynamic usersThatHodl;
  final bool? isFeaturedTutorialWellKnownCreator;
  final bool? isFeaturedTutorialUpAndComingCreator;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        publicKeyBase58Check: json["PublicKeyBase58Check"],
        username: json["Username"],
        description: json["Description"],
        isHidden: json["IsHidden"],
        isReserved: json["IsReserved"],
        isVerified: json["IsVerified"],
        comments: json["Comments"],
        posts: json["Posts"],
        coinEntry: CoinEntry.fromJson(json["CoinEntry"]),
        coinPriceDeSoNanos: json["CoinPriceDeSoNanos"],
        coinPriceBitCloutNanos: json["CoinPriceBitCloutNanos"],
        usersThatHodl: json["UsersThatHODL"],
        isFeaturedTutorialWellKnownCreator:
            json["IsFeaturedTutorialWellKnownCreator"],
        isFeaturedTutorialUpAndComingCreator:
            json["IsFeaturedTutorialUpAndComingCreator"],
      );

  Map<String, dynamic> toJson() => {
        "PublicKeyBase58Check": publicKeyBase58Check,
        "Username": username,
        "Description": description,
        "IsHidden": isHidden,
        "IsReserved": isReserved,
        "IsVerified": isVerified,
        "Comments": comments,
        "Posts": posts,
        "CoinEntry": coinEntry?.toJson(),
        "CoinPriceDeSoNanos": coinPriceDeSoNanos,
        "CoinPriceBitCloutNanos": coinPriceBitCloutNanos,
        "UsersThatHODL": usersThatHodl,
        "IsFeaturedTutorialWellKnownCreator":
            isFeaturedTutorialWellKnownCreator,
        "IsFeaturedTutorialUpAndComingCreator":
            isFeaturedTutorialUpAndComingCreator,
      };
}

class CoinEntry {
  CoinEntry({
    this.creatorBasisPoints,
    this.deSoLockedNanos,
    this.numberOfHolders,
    this.coinsInCirculationNanos,
    this.coinWatermarkNanos,
    this.bitCloutLockedNanos,
  });

  final int? creatorBasisPoints;
  final int? deSoLockedNanos;
  final int? numberOfHolders;
  final int? coinsInCirculationNanos;
  final int? coinWatermarkNanos;
  final int? bitCloutLockedNanos;

  factory CoinEntry.fromJson(Map<String, dynamic> json) => CoinEntry(
        creatorBasisPoints: json["CreatorBasisPoints"],
        deSoLockedNanos: json["DeSoLockedNanos"],
        numberOfHolders: json["NumberOfHolders"],
        coinsInCirculationNanos: json["CoinsInCirculationNanos"],
        coinWatermarkNanos: json["CoinWatermarkNanos"],
        bitCloutLockedNanos: json["BitCloutLockedNanos"],
      );

  Map<String, dynamic> toJson() => {
        "CreatorBasisPoints": creatorBasisPoints,
        "DeSoLockedNanos": deSoLockedNanos,
        "NumberOfHolders": numberOfHolders,
        "CoinsInCirculationNanos": coinsInCirculationNanos,
        "CoinWatermarkNanos": coinWatermarkNanos,
        "BitCloutLockedNanos": bitCloutLockedNanos,
      };
}
