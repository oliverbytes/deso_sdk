import 'package:deso_sdk/src/model/api_error.model.dart';
import 'package:deso_sdk/src/model/diamond/diamonds_for_public_key.model.dart';
import 'package:deso_sdk/src/model/nft/nfts_for_user.model.dart';
import 'package:deso_sdk/src/model/user/follows_stateless.model.dart';
import 'package:deso_sdk/src/model/user/holders_for_public_key.model.dart';
import 'package:deso_sdk/src/model/user/profiles.model.dart';
import 'package:deso_sdk/src/model/user/single_profile.model.dart';
import 'package:deso_sdk/src/model/user/user_global_metadata.model.dart';
import 'package:deso_sdk/src/model/user/users_stateless.model.dart';
import 'package:either_option/either_option.dart';

import '../deso_http_client.dart';

class UserApi {
  late DesoHttpClient client;

  void setClient(DesoHttpClient client) {
    this.client = client;
  }

  Future<Either<ApiError, UsersStateless>> usersStateless({
    List<String> publicKeys = const [],
    bool skipForLeaderboard = true,
  }) async {
    final data = {
      "PublicKeysBase58Check": publicKeys,
      "SkipForLeaderboard": skipForLeaderboard,
    };

    final result = await client.request(
      'get-users-stateless',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(UsersStateless.fromJson(response.data!)),
    );
  }

  /// entriesFollowingUsername: true = followers
  ///
  /// entriesFollowingUsername: false = following
  Future<Either<ApiError, FollowsStateless>> followsStateless({
    String username = '',
    String publicKey = '',
    bool entriesFollowingUsername = false,
    String lastPublicKey = '',
    int numToFetch = 50,
  }) async {
    final data = {
      "Username": username,
      "PublicKeyBase58Check": publicKey,
      "GetEntriesFollowingUsername": entriesFollowingUsername,
      "LastPublicKeyBase58Check": lastPublicKey,
      "NumToFetch": numToFetch,
    };

    final result = await client.request(
      'get-follows-stateless',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(FollowsStateless.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, UserGlobalMetadata>> globalMetadata({
    required String jwt,
    String publicKey = '',
  }) async {
    final data = {
      "JWT": jwt,
      "UserPublicKeyBase58Check": publicKey,
    };

    final result = await client.request(
      'get-user-global-metadata',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(UserGlobalMetadata.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, Profiles>> profiles({
    String publicKey = '',
    String username = '',
    String usernamePrefix = '',
    String description = '',
    String orderBy = '',
    int numToFetch = 20,
    String readerPublicKey = '',
    String moderationType = '',
    bool fetchUsersThatHodl = false,
    bool addGlobalFeed = false,
  }) async {
    final data = {
      "PublicKeyBase58Check": publicKey,
      "Username": username,
      "UsernamePrefix": usernamePrefix,
      "Description": description,
      "OrderBy": orderBy,
      "NumToFetch": numToFetch,
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "ModerationType": moderationType,
      "FetchUsersThatHODL": fetchUsersThatHodl,
      "AddGlobalFeedBool": addGlobalFeed,
    };

    final result = await client.request(
      'get-profiles',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(Profiles.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, SingleProfile>> singleProfile({
    String publicKey = '',
    String username = '',
  }) async {
    final data = {
      "PublicKeyBase58Check": publicKey,
      "Username": username,
    };

    final result = await client.request(
      'get-single-profile',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(SingleProfile.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, DiamondsForPublicKey>> diamondsForPublickKey({
    String publicKey = '',
    bool fetchYouDiamonded = false,
  }) async {
    final data = {
      "PublicKeyBase58Check": publicKey,
      "FetchYouDiamonded": fetchYouDiamonded
    };

    final result = await client.request(
      'get-single-profile',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(DiamondsForPublicKey.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, HoldersForPublicKey>> holdersForPublicKey({
    String publicKey = '',
    String username = '',
    String readerPublicKey = '',
    String lastPublicKey = '',
    int numToFetch = 10,
    bool fetchHoldings = false,
    bool fetchAll = false,
  }) async {
    final data = {
      "PublicKeyBase58Check": publicKey,
      "Username": username,
      "LastPublicKeyBase58Check": lastPublicKey,
      "NumToFetch": numToFetch,
      "FetchHodlings": fetchHoldings,
      "FetchAll": fetchAll
    };

    final result = await client.request(
      'get-hodlers-for-public-key',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(HoldersForPublicKey.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, NftsForUser>> nfts({
    String publicKey = '',
    String readerPublicKey = '',
    bool fetchHoldings = false,
    bool isForSale = false,
  }) async {
    final data = {
      "UserPublicKeyBase58Check": publicKey,
      "ReaderPublicKeyBase58Check": readerPublicKey,
      "IsForSale": isForSale
    };

    final result = await client.request(
      'get-nfts-for-user',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(NftsForUser.fromJson(response.data!)),
    );
  }
}
