class SigninRequest {
  final String email;
  final String password;

  SigninRequest({required this.email, required this.password});

  Map<String, dynamic> toMap() => {'email': email, 'password': password};

  factory SigninRequest.fromMap(Map<String, dynamic> map) =>
      SigninRequest(email: map['email'] ?? '', password: map['password'] ?? '');

  SigninRequest copyWith({String? email, String? password}) => SigninRequest(
    email: email ?? this.email,
    password: password ?? this.password,
  );
}
