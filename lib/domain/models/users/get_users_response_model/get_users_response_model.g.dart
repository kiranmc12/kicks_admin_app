// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersResponseModel _$UsersResponseModelFromJson(Map<String, dynamic> json) =>
    UsersResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      users: (json['data'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$UsersResponseModelToJson(UsersResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.users,
      'error': instance.error,
    };
