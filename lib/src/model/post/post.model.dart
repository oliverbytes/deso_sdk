import 'package:deso_sdk/src/model/comment/comment.model.dart';
import 'package:deso_sdk/src/model/user/profile.model.dart';

class Post {
  Post({
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
  final List<String>? imageUrLs;
  final dynamic videoUrLs;
  final Post? repostedPostEntryResponse;
  final int? creatorBasisPoints;
  final int? stakeMultipleBasisPoints;
  final double? timestampNanos;
  final bool? isHidden;
  final int? confirmationBlockHeight;
  final bool? inMempool;
  final Profile? profileEntryResponse;
  final List<Comment>? comments;
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
  final Post? recloutedPostEntryResponse;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        postHashHex: json["PostHashHex"],
        posterPublicKeyBase58Check: json["PosterPublicKeyBase58Check"],
        parentStakeId: json["ParentStakeID"],
        body: json["Body"],
        imageUrLs: json["ImageURLs"] == null
            ? List.empty()
            : List<String>.from(json["ImageURLs"].map((x) => x)),
        videoUrLs: json["VideoURLs"],
        repostedPostEntryResponse: json["RepostedPostEntryResponse"] == null
            ? null
            : Post.fromJson(json["RepostedPostEntryResponse"]),
        creatorBasisPoints: json["CreatorBasisPoints"],
        stakeMultipleBasisPoints: json["StakeMultipleBasisPoints"],
        timestampNanos: json["TimestampNanos"].toDouble(),
        isHidden: json["IsHidden"],
        confirmationBlockHeight: json["ConfirmationBlockHeight"],
        inMempool: json["InMempool"],
        profileEntryResponse: json["ProfileEntryResponse"] == null
            ? null
            : Profile.fromJson(json["ProfileEntryResponse"]),
        comments: json["Comments"] == null
            ? List.empty()
            : List<Comment>.from(json["Comments"].map((x) => x)),
        likeCount: json["LikeCount"],
        diamondCount: json["DiamondCount"],
        postEntryReaderState: json["PostEntryReaderState"] == null
            ? null
            : PostEntryReaderState.fromJson(json["PostEntryReaderState"]),
        isPinned: json["IsPinned"],
        postExtraData: json["PostExtraData"] == null
            ? null
            : PostExtraData.fromJson(json["PostExtraData"]),
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
        recloutedPostEntryResponse: json["RecloutedPostEntryResponse"] == null
            ? null
            : Post.fromJson(json["RecloutedPostEntryResponse"]),
      );

  Map<String, dynamic> toJson() => {
        "PostHashHex": postHashHex,
        "PosterPublicKeyBase58Check": posterPublicKeyBase58Check,
        "ParentStakeID": parentStakeId,
        "Body": body,
        "ImageURLs": imageUrLs == null
            ? List.empty()
            : List<dynamic>.from(imageUrLs!.map((x) => x)),
        "VideoURLs": videoUrLs,
        "RepostedPostEntryResponse": repostedPostEntryResponse?.toJson(),
        "CreatorBasisPoints": creatorBasisPoints,
        "StakeMultipleBasisPoints": stakeMultipleBasisPoints,
        "TimestampNanos": timestampNanos,
        "IsHidden": isHidden,
        "ConfirmationBlockHeight": confirmationBlockHeight,
        "InMempool": inMempool,
        "Profile": profileEntryResponse?.toJson(),
        "Comments": comments == null
            ? List.empty()
            : List<dynamic>.from(comments!.map((x) => x)),
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
        "RecloutedPostEntryResponse": recloutedPostEntryResponse?.toJson(),
      };
}

class PostEntryReaderState {
  PostEntryReaderState({
    this.likedByReader,
    this.diamondLevelBestowed,
    this.repostedByReader,
    this.repostPostHashHex,
  });

  final bool? likedByReader;
  final int? diamondLevelBestowed;
  final bool? repostedByReader;
  final String? repostPostHashHex;

  factory PostEntryReaderState.fromJson(Map<String, dynamic> json) =>
      PostEntryReaderState(
        likedByReader: json["LikedByReader"],
        diamondLevelBestowed: json["DiamondLevelBestowed"],
        repostedByReader: json["RepostedByReader"],
        repostPostHashHex: json["RepostPostHashHex"],
      );

  Map<String, dynamic> toJson() => {
        "LikedByReader": likedByReader,
        "DiamondLevelBestowed": diamondLevelBestowed,
        "RepostedByReader": repostedByReader,
        "RepostPostHashHex": repostPostHashHex,
      };
}

class PostExtraData {
  PostExtraData({
    this.traits,
  });

  final String? traits;

  factory PostExtraData.fromJson(Map<String, dynamic> json) => PostExtraData(
        traits: json["traits"],
      );

  Map<String, dynamic> toJson() => {
        "traits": traits,
      };
}
