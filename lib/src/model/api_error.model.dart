class ApiError {
  String error;
  int code;

  ApiError({
    this.error = '',
    this.code = 0,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) => ApiError(
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "code": code,
      };
}

class ApiErrorCodes {
  static const kTimedOut = 408;
  static const kNetworkError = 0;
}
