class UserGlobalMetadata {
  UserGlobalMetadata({
    this.email,
    this.phoneNumber,
  });

  final String? email;
  final String? phoneNumber;

  factory UserGlobalMetadata.fromJson(Map<String, dynamic> json) =>
      UserGlobalMetadata(
        email: json["Email"],
        phoneNumber: json["PhoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "Email": email,
        "PhoneNumber": phoneNumber,
      };
}
