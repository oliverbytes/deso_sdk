import 'package:deso_sdk/src/model/api_error.model.dart';
import 'package:deso_sdk/src/model/diamond/diamonds_for_post.model.dart';
import 'package:deso_sdk/src/model/nft/nft_bids_for_post.model.dart';
import 'package:deso_sdk/src/model/nft/nft_entries_for_post.model.dart';
import 'package:deso_sdk/src/model/post/likes_for_post.model.dart';
import 'package:deso_sdk/src/model/post/posts.model.dart';
import 'package:deso_sdk/src/model/post/posts_for_public_key.model.dart';
import 'package:deso_sdk/src/model/post/quote_reposts_for_post.model.dart';
import 'package:deso_sdk/src/model/post/reposts_for_post.model.dart';
import 'package:deso_sdk/src/model/post/single_post.model.dart';
import 'package:deso_sdk/src/model/transaction/transaction.model.dart';
import 'package:either_option/either_option.dart';

import '../deso_http_client.dart';

class PostApi {
  late DesoHttpClient client;

  void setClient(DesoHttpClient client) {
    this.client = client;
  }

  Future<Either<ApiError, PostsForPublicKey>> postsForPublicKey({
    String publicKey = '',
    String username = '',
    String readerPublicKey = '',
    String lastPostHashHex = '',
    int numToFetch = 10,
    bool mediaRequired = false,
  }) async {
    final data = {
      "PublicKeyBase58Check": publicKey,
      "Username": username,
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "LastPostHashHex": lastPostHashHex,
      "NumToFetch": numToFetch,
      "MediaRequired": mediaRequired,
    };

    final result = await client.request(
      'get-posts-for-public-key',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(PostsForPublicKey.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, SinglePost>> singlePost({
    String postHashHex = '',
    String readerPublicKey = '',
    int commentOffset = 0,
    int commentLimit = 20,
    bool fetchParents = true,
    bool addGlobalFeed = false,
  }) async {
    final data = {
      "PostHashHex": postHashHex,
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "FetchParents": fetchParents,
      "CommentOffset": commentOffset,
      "CommentLimit": commentLimit,
      "AddGlobalFeedBool": addGlobalFeed,
    };

    final result = await client.request(
      'get-single-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(SinglePost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, Posts>> posts({
    String postHashHex = '',
    String readerPublicKey = '',
    String orderBy = '',
    int startTimestampSecs = 0,
    String postContent = '',
    int numToFetch = 50,
    bool fetchSubcomments = false,
    bool postsForFollowFeed = false,
    bool postsForGlobalWhitelist = true,
    bool postsByDESO = false,
    bool mediaRequired = true,
    int postsByDESOMinutesLookback = 0,
    bool addGlobalFeed = false,
  }) async {
    final data = {
      "PostHashHex": postHashHex,
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "OrderBy": orderBy,
      "StartTstampSecs": startTimestampSecs,
      "PostContent": postContent,
      "NumToFetch": 50,
      "FetchSubcomments": false,
      "GetPostsForFollowFeed": false,
      "GetPostsForGlobalWhitelist": true,
      "GetPostsByDESO": false,
      "MediaRequired": false,
      "PostsByDESOMinutesLookback": 0,
      "AddGlobalFeedBool": false
    };

    final result = await client.request(
      'get-posts-stateless',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(Posts.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, LikesForPost>> likes({
    String postHashHex = '',
    String readerPublicKey = '',
    int offset = 0,
    int limit = 50,
  }) async {
    final data = {
      "PostHashHex": postHashHex,
      "Offset": offset,
      "Limit": limit,
      "ReaderPublicKeyBase58Check": readerPublicKey
    };

    final result = await client.request(
      'get-likes-for-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(LikesForPost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, DiamondsForPost>> diamonds({
    String postHashHex = '',
    String readerPublicKey = '',
    int offset = 0,
    int limit = 50,
  }) async {
    final data = {
      "PostHashHex": postHashHex,
      "Offset": offset,
      "Limit": limit,
      "ReaderPublicKeyBase58Check": readerPublicKey
    };

    final result = await client.request(
      'get-diamonds-for-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(DiamondsForPost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, RepostsForPost>> reposts({
    String postHashHex = '',
    String readerPublicKey = '',
    int offset = 0,
    int limit = 50,
  }) async {
    final data = {
      "PostHashHex": postHashHex,
      "Offset": offset,
      "Limit": limit,
      "ReaderPublicKeyBase58Check": readerPublicKey
    };

    final result = await client.request(
      'get-reposts-for-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(RepostsForPost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, QuoteRepostsForPost>> quoteReposts({
    String postHashHex = '',
    String readerPublicKey = '',
    int offset = 0,
    int limit = 50,
  }) async {
    final data = {
      "PostHashHex": postHashHex,
      "Offset": offset,
      "Limit": limit,
      "ReaderPublicKeyBase58Check": readerPublicKey
    };

    final result = await client.request(
      'get-quote-reposts-for-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(QuoteRepostsForPost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, NftBidsForNftPost>> nftBids({
    String postHashHex = '',
    String readerPublicKey = '',
  }) async {
    final data = {
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "PostHashHex": postHashHex,
    };

    final result = await client.request(
      'get-nft-bids-for-nft-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(NftBidsForNftPost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, NftEntriesForPost>> nftEntries({
    String postHashHex = '',
    String readerPublicKey = '',
  }) async {
    final data = {
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "PostHashHex": postHashHex,
    };

    final result = await client.request(
      'get-nft-entries-for-nft-post',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(NftEntriesForPost.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, TransactionResponse>> like({
    String postHashHex = '',
    String readerPublicKey = '',
    bool isUnlike = false,
    int minFeeRateNanosPerKB = 1000,
  }) async {
    final data = {
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "LikedPostHashHex": postHashHex,
      "IsUnlike": isUnlike,
      "MinFeeRateNanosPerKB": minFeeRateNanosPerKB,
    };

    final result = await client.request(
      'create-like-stateless',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(TransactionResponse.fromJson(response.data!)),
    );
  }
}
