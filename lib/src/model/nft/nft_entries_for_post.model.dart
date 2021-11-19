import 'package:deso_sdk/src/model/nft/nft.model.dart';

class NftEntriesForPost {
  NftEntriesForPost({
    this.nftEntryResponses,
  });

  final List<Nft>? nftEntryResponses;

  factory NftEntriesForPost.fromJson(Map<String, dynamic> json) =>
      NftEntriesForPost(
        nftEntryResponses: List<Nft>.from(
            json["NFTEntryResponses"].map((x) => Nft.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "NFTEntryResponses":
            List<dynamic>.from(nftEntryResponses!.map((x) => x.toJson())),
      };
}
