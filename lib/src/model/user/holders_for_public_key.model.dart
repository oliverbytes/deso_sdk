import 'profile.model.dart';

class HoldersForPublicKey {
  HoldersForPublicKey({
    this.hodlers,
    this.lastPublicKeyBase58Check,
  });

  final List<Hodler>? hodlers;
  final String? lastPublicKeyBase58Check;

  factory HoldersForPublicKey.fromJson(Map<String, dynamic> json) =>
      HoldersForPublicKey(
        hodlers: json["Hodlers"] == null
            ? List.empty()
            : List<Hodler>.from(json["Hodlers"].map((x) => Hodler.fromJson(x))),
        lastPublicKeyBase58Check: json["LastPublicKeyBase58Check"],
      );

  Map<String, dynamic> toJson() => {
        "Hodlers": List<dynamic>.from(hodlers!.map((x) => x.toJson())),
        "LastPublicKeyBase58Check": lastPublicKeyBase58Check,
      };
}

class Hodler {
  Hodler({
    this.hodLerPublicKeyBase58Check,
    this.creatorPublicKeyBase58Check,
    this.hasPurchased,
    this.balanceNanos,
    this.netBalanceInMempool,
    this.profileEntryResponse,
  });

  final String? hodLerPublicKeyBase58Check;
  final String? creatorPublicKeyBase58Check;
  final bool? hasPurchased;
  final int? balanceNanos;
  final int? netBalanceInMempool;
  final Profile? profileEntryResponse;

  factory Hodler.fromJson(Map<String, dynamic> json) => Hodler(
        hodLerPublicKeyBase58Check: json["HODLerPublicKeyBase58Check"],
        creatorPublicKeyBase58Check: json["CreatorPublicKeyBase58Check"],
        hasPurchased: json["HasPurchased"],
        balanceNanos: json["BalanceNanos"],
        netBalanceInMempool: json["NetBalanceInMempool"],
        profileEntryResponse: json["ProfileEntryResponse"] == null
            ? null
            : Profile.fromJson(json["ProfileEntryResponse"]),
      );

  Map<String, dynamic> toJson() => {
        "HODLerPublicKeyBase58Check": hodLerPublicKeyBase58Check,
        "CreatorPublicKeyBase58Check": creatorPublicKeyBase58Check,
        "HasPurchased": hasPurchased,
        "BalanceNanos": balanceNanos,
        "NetBalanceInMempool": netBalanceInMempool,
        "ProfileEntryResponse": profileEntryResponse?.toJson(),
      };
}
