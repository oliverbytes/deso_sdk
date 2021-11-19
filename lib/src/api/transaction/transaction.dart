import 'package:deso_sdk/src/model/api_error.model.dart';
import 'package:deso_sdk/src/model/transaction/submit_transaction.model.dart';
import 'package:deso_sdk/src/model/transaction/transaction.model.dart';
import 'package:either_option/either_option.dart';

import '../deso_http_client.dart';

class TransactionApi {
  late DesoHttpClient client;

  void setClient(DesoHttpClient client) {
    this.client = client;
  }

  Future<Either<ApiError, TransactionResponse>> follow({
    String followerPublicKey = '',
    String followedPublicKey = '',
    bool isUnfollow = false,
    int minFeeRateNanosPerKB = 1000,
  }) async {
    final data = {
      "FollowerPublicKeyBase58Check": followerPublicKey,
      "FollowedPublicKeyBase58Check": followedPublicKey,
      "IsUnfollow": isUnfollow,
      "MinFeeRateNanosPerKB": minFeeRateNanosPerKB,
    };

    final result = await client.request(
      'create-follow-txn-stateless',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(TransactionResponse.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, SubmitTransaction>> submit({
    String transactionHex = '',
  }) async {
    final data = {
      "TransactionHex": transactionHex,
    };

    final result = await client.request(
      'submit-transaction',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(SubmitTransaction.fromJson(response.data!)),
    );
  }
}
