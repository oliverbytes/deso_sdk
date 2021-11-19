import 'package:deso_sdk/src/model/api_error.model.dart';
import 'package:dio/dio.dart';
import 'package:either_option/either_option.dart';

class DesoHttpClient {
  // PROPERTIES
  String? host;
  int? apiVersion;

  // CONSTRUCTOR
  DesoHttpClient({
    this.host = 'bitclout.com',
    this.apiVersion = 0,
  });

  // GETTERS
  String get _baseUrl => 'https://$host';
  String get _apiUrl => '$_baseUrl/api/v$apiVersion';

  // VARIABLES
  final _dio = Dio();

  // FUNCTIONS
  void init({
    required String host,
    required int apiVersion,
  }) {
    this.host = host;
    this.apiVersion = apiVersion;
  }

  Future<Either<ApiError, Response<dynamic>>> request(
    String endpoint, {
    dynamic data,
    String method = 'GET',
  }) async {
    try {
      final response = await _dio.request(
        '$_apiUrl/$endpoint',
        data: data,
        options: Options(
          method: method,
          contentType: data != null ? 'application/json' : '',
        ),
      );

      return Right(response);
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return Left(
          ApiError(
            code: ApiErrorCodes.kTimedOut, //
            error: 'Connection timed out',
          ),
        );
      }

      if (e.response != null) {
        ApiError apiError = ApiError(code: e.response!.statusCode!);
        final responseContentType = e.response!.headers.value('Content-Type');

        if (responseContentType == 'application/json') {
          // JSON response
          apiError = ApiError.fromJson(e.response!.data);
          apiError.code = e.response!.statusCode!;
        } else {
          // Plain text response
          apiError.error = e.response!.data;
        }

        return Left(apiError);
      }
    } catch (e) {
      return Left(
        ApiError(
          code: ApiErrorCodes.kNetworkError,
          error: 'Network Error: $e',
        ),
      );
    }

    return Left(
      ApiError(
        code: 0,
        error: 'Unknown Error',
      ),
    );
  }
}
