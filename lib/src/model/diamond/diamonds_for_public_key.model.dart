import 'package:deso_sdk/src/model/user/profile.model.dart';

class DiamondsForPublicKey {
  DiamondsForPublicKey({
    this.diamondSenderSummaryResponses,
    this.totalDiamonds,
  });

  final List<DiamondSenderSummaryResponse>? diamondSenderSummaryResponses;
  final int? totalDiamonds;

  factory DiamondsForPublicKey.fromJson(Map<String, dynamic> json) =>
      DiamondsForPublicKey(
        diamondSenderSummaryResponses:
            json["DiamondSenderSummaryResponses"] == null
                ? List.empty()
                : List<DiamondSenderSummaryResponse>.from(
                    json["DiamondSenderSummaryResponses"].map(
                      (x) => DiamondSenderSummaryResponse.fromJson(x),
                    ),
                  ),
        totalDiamonds: json["TotalDiamonds"],
      );

  Map<String, dynamic> toJson() => {
        "DiamondSenderSummaryResponses": List<dynamic>.from(
            diamondSenderSummaryResponses!.map((x) => x.toJson())),
        "TotalDiamonds": totalDiamonds,
      };
}

class DiamondSenderSummaryResponse {
  DiamondSenderSummaryResponse({
    this.senderPublicKeyBase58Check,
    this.receiverPublicKeyBase58Check,
    this.totalDiamonds,
    this.highestDiamondLevel,
    this.diamondLevelMap,
    this.profileEntryResponse,
  });

  final String? senderPublicKeyBase58Check;
  final String? receiverPublicKeyBase58Check;
  final int? totalDiamonds;
  final int? highestDiamondLevel;
  final Map<String, int>? diamondLevelMap;
  final Profile? profileEntryResponse;

  factory DiamondSenderSummaryResponse.fromJson(Map<String, dynamic> json) =>
      DiamondSenderSummaryResponse(
        senderPublicKeyBase58Check: json["SenderPublicKeyBase58Check"],
        receiverPublicKeyBase58Check: json["ReceiverPublicKeyBase58Check"],
        totalDiamonds: json["TotalDiamonds"],
        highestDiamondLevel: json["HighestDiamondLevel"],
        diamondLevelMap: Map.from(json["DiamondLevelMap"])
            .map((k, v) => MapEntry<String, int>(k, v)),
        profileEntryResponse: json["ProfileEntryResponse"] == null
            ? null
            : Profile.fromJson(json["ProfileEntryResponse"]),
      );

  Map<String, dynamic> toJson() => {
        "SenderPublicKeyBase58Check": senderPublicKeyBase58Check,
        "ReceiverPublicKeyBase58Check": receiverPublicKeyBase58Check,
        "TotalDiamonds": totalDiamonds,
        "HighestDiamondLevel": highestDiamondLevel,
        "DiamondLevelMap": Map.from(diamondLevelMap!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "ProfileEntryResponse": profileEntryResponse?.toJson(),
      };
}
