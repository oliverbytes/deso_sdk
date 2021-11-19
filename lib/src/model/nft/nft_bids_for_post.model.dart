import 'package:deso_sdk/src/model/post/post.model.dart';

import 'nft.model.dart';

class NftBidsForNftPost {
  NftBidsForNftPost({
    this.postEntryResponse,
    this.nftEntryResponses,
    this.bidEntryResponses,
  });

  final Post? postEntryResponse;
  final List<Nft>? nftEntryResponses;
  final dynamic bidEntryResponses;

  factory NftBidsForNftPost.fromJson(Map<String, dynamic> json) =>
      NftBidsForNftPost(
        postEntryResponse: Post.fromJson(json["PostEntryResponse"]),
        nftEntryResponses: json["NFTEntryResponses"] == null
            ? List.empty()
            : List<Nft>.from(
                json["NFTEntryResponses"].map((x) => Nft.fromJson(x))),
        bidEntryResponses: json["BidEntryResponses"],
      );

  Map<String, dynamic> toJson() => {
        "PostEntryResponse": postEntryResponse?.toJson(),
        "NFTEntryResponses":
            List<dynamic>.from(nftEntryResponses!.map((x) => x.toJson())),
        "BidEntryResponses": bidEntryResponses,
      };
}
