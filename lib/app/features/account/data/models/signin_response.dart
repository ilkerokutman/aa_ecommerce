class SigninResponse {
  final String accessToken;
  final String refreshToken;
  final int expiresOn;

  SigninResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresOn,
  });

  factory SigninResponse.fromMap(Map<String, dynamic> map) {
    return SigninResponse(
      accessToken: map['accessToken'] ?? '',
      refreshToken: map['refreshToken'] ?? '',
      expiresOn: map['expiresOn'] ?? 0,
    );
  }
}
