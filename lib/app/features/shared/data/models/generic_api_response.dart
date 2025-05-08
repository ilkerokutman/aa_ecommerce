class GenericApiResponse {
  int statusCode;
  bool success;
  dynamic data;
  String? message;
  List<String>? errors;

  GenericApiResponse({
    required this.statusCode,
    required this.success,
    this.data,
    this.message,
    this.errors,
  });

  factory GenericApiResponse.fromMap(Map<String, dynamic> json) {
    return GenericApiResponse(
      statusCode: json['statusCode'],
      success: json['success'],
      data: json['data'],
      message: json['message'],
      errors: json['errors'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'statusCode': statusCode,
      'success': success,
      'data': data,
      'message': message,
      'errors': errors,
    };
  }

  GenericApiResponse copyWith({
    int? statusCode,
    bool? success,
    dynamic? data,
    String? message,
    List<String>? errors,
  }) {
    return GenericApiResponse(
      statusCode: statusCode ?? this.statusCode,
      success: success ?? this.success,
      data: data ?? this.data,
      message: message ?? this.message,
      errors: errors ?? this.errors,
    );
  }
}
