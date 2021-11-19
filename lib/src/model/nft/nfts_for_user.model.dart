import 'package:deso_sdk/src/model/post/post.model.dart';

import 'nft.model.dart';

class NftsForUser {
  NftsForUser({
    this.nfTsMap,
  });

  final Map<String, NfTsMap>? nfTsMap;

  factory NftsForUser.fromJson(Map<String, dynamic> json) => NftsForUser(
        nfTsMap: json["NFTsMap"] == null
            ? {}
            : Map.from(json["NFTsMap"]).map(
                (k, v) => MapEntry<String, NfTsMap>(k, NfTsMap.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "NFTsMap": Map.from(nfTsMap!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class NfTsMap {
  NfTsMap({
    this.postEntryResponse,
    this.nftEntryResponses,
  });

  final Post? postEntryResponse;
  final List<Nft>? nftEntryResponses;

  factory NfTsMap.fromJson(Map<String, dynamic> json) => NfTsMap(
        postEntryResponse: Post.fromJson(json["PostEntryResponse"]),
        nftEntryResponses: json["NFTEntryResponses"] == null
            ? List.empty()
            : List<Nft>.from(
                json["NFTEntryResponses"].map((x) => Nft.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "PostEntryResponse": postEntryResponse?.toJson(),
        "NFTEntryResponses":
            List<dynamic>.from(nftEntryResponses!.map((x) => x.toJson())),
      };
}
