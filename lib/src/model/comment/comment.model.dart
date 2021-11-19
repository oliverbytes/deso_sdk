import 'package:deso_sdk/src/model/post/post.model.dart';
import 'package:deso_sdk/src/model/user/profile.model.dart';

class Comment {
  Comment({
    this.postHashHex,
    this.posterPublicKeyBase58Check,
    this.parentStakeId,
    this.body,
    this.imageUrLs,
    this.videoUrLs,
    this.repostedPostEntryResponse,
    this.creatorBasisPoints,
    this.stakeMultipleBasisPoints,
    this.timestampNanos,
    this.isHidden,
    this.confirmationBlockHeight,
    this.inMempool,
    this.profileEntryResponse,
    this.comments,
    this.likeCount,
    this.diamondCount,
    this.postEntryReaderState,
    this.isPinned,
    this.postExtraData,
    this.commentCount,
    this.repostCount,
    this.quoteRepostCount,
    this.parentPosts,
    this.isNft,
    this.numNftCopies,
    this.numNftCopiesForSale,
    this.numNftCopiesBurned,
    this.hasUnlockable,
    this.nftRoyaltyToCreatorBasisPoints,
    this.nftRoyaltyToCoinBasisPoints,
    this.diamondsFromSender,
    this.hotnessScore,
    this.postMultiplier,
    this.recloutCount,
    this.quoteRecloutCount,
    this.recloutedPostEntryResponse,
  });

  final String? postHashHex;
  final String? posterPublicKeyBase58Check;
  final String? parentStakeId;
  final String? body;
  final dynamic imageUrLs;
  final dynamic videoUrLs;
  final dynamic repostedPostEntryResponse;
  final int? creatorBasisPoints;
  final int? stakeMultipleBasisPoints;
  final double? timestampNanos;
  final bool? isHidden;
  final int? confirmationBlockHeight;
  final bool? inMempool;
  final Profile? profileEntryResponse;
  final dynamic comments;
  final int? likeCount;
  final int? diamondCount;
  final PostEntryReaderState? postEntryReaderState;
  final bool? isPinned;
  final PostExtraData? postExtraData;
  final int? commentCount;
  final int? repostCount;
  final int? quoteRepostCount;
  final dynamic parentPosts;
  final bool? isNft;
  final int? numNftCopies;
  final int? numNftCopiesForSale;
  final int? numNftCopiesBurned;
  final bool? hasUnlockable;
  final int? nftRoyaltyToCreatorBasisPoints;
  final int? nftRoyaltyToCoinBasisPoints;
  final int? diamondsFromSender;
  final int? hotnessScore;
  final int? postMultiplier;
  final int? recloutCount;
  final int? quoteRecloutCount;
  final dynamic recloutedPostEntryResponse;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        postHashHex: json["PostHashHex"],
        posterPublicKeyBase58Check: json["PosterPublicKeyBase58Check"],
        parentStakeId: json["ParentStakeID"],
        body: json["Body"],
        imageUrLs: json["ImageURLs"],
        videoUrLs: json["VideoURLs"],
        repostedPostEntryResponse: json["RepostedPostEntryResponse"],
        creatorBasisPoints: json["CreatorBasisPoints"],
        stakeMultipleBasisPoints: json["StakeMultipleBasisPoints"],
        timestampNanos: json["TimestampNanos"].toDouble(),
        isHidden: json["IsHidden"],
        confirmationBlockHeight: json["ConfirmationBlockHeight"],
        inMempool: json["InMempool"],
        profileEntryResponse: Profile.fromJson(json["ProfileEntryResponse"]),
        comments: json["Comments"],
        likeCount: json["LikeCount"],
        diamondCount: json["DiamondCount"],
        postEntryReaderState:
            PostEntryReaderState.fromJson(json["PostEntryReaderState"]),
        isPinned: json["IsPinned"],
        postExtraData: PostExtraData.fromJson(json["PostExtraData"]),
        commentCount: json["CommentCount"],
        repostCount: json["RepostCount"],
        quoteRepostCount: json["QuoteRepostCount"],
        parentPosts: json["ParentPosts"],
        isNft: json["IsNFT"],
        numNftCopies: json["NumNFTCopies"],
        numNftCopiesForSale: json["NumNFTCopiesForSale"],
        numNftCopiesBurned: json["NumNFTCopiesBurned"],
        hasUnlockable: json["HasUnlockable"],
        nftRoyaltyToCreatorBasisPoints: json["NFTRoyaltyToCreatorBasisPoints"],
        nftRoyaltyToCoinBasisPoints: json["NFTRoyaltyToCoinBasisPoints"],
        diamondsFromSender: json["DiamondsFromSender"],
        hotnessScore: json["HotnessScore"],
        postMultiplier: json["PostMultiplier"],
        recloutCount: json["RecloutCount"],
        quoteRecloutCount: json["QuoteRecloutCount"],
        recloutedPostEntryResponse: json["RecloutedPostEntryResponse"],
      );

  Map<String, dynamic> toJson() => {
        "PostHashHex": postHashHex,
        "PosterPublicKeyBase58Check": posterPublicKeyBase58Check,
        "ParentStakeID": parentStakeId,
        "Body": body,
        "ImageURLs": imageUrLs,
        "VideoURLs": videoUrLs,
        "RepostedPostEntryResponse": repostedPostEntryResponse,
        "CreatorBasisPoints": creatorBasisPoints,
        "StakeMultipleBasisPoints": stakeMultipleBasisPoints,
        "TimestampNanos": timestampNanos,
        "IsHidden": isHidden,
        "ConfirmationBlockHeight": confirmationBlockHeight,
        "InMempool": inMempool,
        "ProfileEntryResponse": profileEntryResponse?.toJson(),
        "Comments": comments,
        "LikeCount": likeCount,
        "DiamondCount": diamondCount,
        "PostEntryReaderState": postEntryReaderState?.toJson(),
        "IsPinned": isPinned,
        "PostExtraData": postExtraData?.toJson(),
        "CommentCount": commentCount,
        "RepostCount": repostCount,
        "QuoteRepostCount": quoteRepostCount,
        "ParentPosts": parentPosts,
        "IsNFT": isNft,
        "NumNFTCopies": numNftCopies,
        "NumNFTCopiesForSale": numNftCopiesForSale,
        "NumNFTCopiesBurned": numNftCopiesBurned,
        "HasUnlockable": hasUnlockable,
        "NFTRoyaltyToCreatorBasisPoints": nftRoyaltyToCreatorBasisPoints,
        "NFTRoyaltyToCoinBasisPoints": nftRoyaltyToCoinBasisPoints,
        "DiamondsFromSender": diamondsFromSender,
        "HotnessScore": hotnessScore,
        "PostMultiplier": postMultiplier,
        "RecloutCount": recloutCount,
        "QuoteRecloutCount": quoteRecloutCount,
        "RecloutedPostEntryResponse": recloutedPostEntryResponse,
      };
}
