import 'data.dart';

class LoginResponse {
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  LoginResponse({this.statusCode, this.message, this.data, this.error});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        statusCode: json['status_code'] as int?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        error: json['error'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'status_code': statusCode,
        'message': message,
        'data': data?.toJson(),
        'error': error,
      };
}
