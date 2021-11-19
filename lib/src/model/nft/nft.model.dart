import 'package:deso_sdk/src/model/user/profile.model.dart';

class Nft {
  Nft({
    this.ownerPublicKeyBase58Check,
    this.profileEntryResponse,
    this.serialNumber,
    this.isForSale,
    this.isPending,
    this.minBidAmountNanos,
    this.lastAcceptedBidAmountNanos,
    this.highestBidAmountNanos,
    this.lowestBidAmountNanos,
  });

  final String? ownerPublicKeyBase58Check;
  final Profile? profileEntryResponse;
  final int? serialNumber;
  final bool? isForSale;
  final bool? isPending;
  final int? minBidAmountNanos;
  final int? lastAcceptedBidAmountNanos;
  final int? highestBidAmountNanos;
  final int? lowestBidAmountNanos;

  factory Nft.fromJson(Map<String, dynamic> json) => Nft(
        ownerPublicKeyBase58Check: json["OwnerPublicKeyBase58Check"],
        profileEntryResponse: json["ProfileEntryResponse"] == null
            ? null
            : Profile.fromJson(json["ProfileEntryResponse"]),
        serialNumber: json["SerialNumber"],
        isForSale: json["IsForSale"],
        isPending: json["IsPending"],
        minBidAmountNanos: json["MinBidAmountNanos"],
        lastAcceptedBidAmountNanos: json["LastAcceptedBidAmountNanos"],
        highestBidAmountNanos: json["HighestBidAmountNanos"],
        lowestBidAmountNanos: json["LowestBidAmountNanos"],
      );

  Map<String, dynamic> toJson() => {
        "OwnerPublicKeyBase58Check": ownerPublicKeyBase58Check,
        "ProfileEntryResponse": profileEntryResponse?.toJson(),
        "SerialNumber": serialNumber,
        "IsForSale": isForSale,
        "IsPending": isPending,
        "MinBidAmountNanos": minBidAmountNanos,
        "LastAcceptedBidAmountNanos": lastAcceptedBidAmountNanos,
        "HighestBidAmountNanos": highestBidAmountNanos,
        "LowestBidAmountNanos": lowestBidAmountNanos,
      };
}
