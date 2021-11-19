import 'package:deso_sdk/src/model/api_error.model.dart';
import 'package:deso_sdk/src/model/general/app_state.model.dart';
import 'package:deso_sdk/src/model/general/exchange_rate.model.dart';
import 'package:either_option/either_option.dart';

import '../deso_http_client.dart';

class GeneralApi {
  late DesoHttpClient client;

  void setClient(DesoHttpClient client) {
    this.client = client;
  }

  Future<Either<ApiError, AppState>> appState({String publicKey = ''}) async {
    final data = {"PublicKeyBase58Check": publicKey};

    final result = await client.request(
      'get-app-state',
      data: data,
      method: 'POST',
    );

    return result.fold(
      (error) => Left(error),
      (response) => Right(AppState.fromJson(response.data!)),
    );
  }

  Future<Either<ApiError, ExchangeRate>> exchangeRate() async {
    final result = await client.request('get-exchange-rate');

    return result.fold(
      (error) => Left(error),
      (response) => Right(ExchangeRate.fromJson(response.data!)),
    );
  }
}
