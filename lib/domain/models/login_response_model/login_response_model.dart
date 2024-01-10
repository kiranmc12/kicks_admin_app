

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? data;
  String? error;
  String? message;
  int? statusCode;

  LoginResponseModel({
    this.data,
    this.error,
    this.message,
    this.statusCode,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      data: json['data'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['status_code'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data,
        'error': error,
        'message': message,
        'status_code': statusCode,
      };
}
