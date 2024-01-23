// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBrandModel _$GetBrandModelFromJson(Map<String, dynamic> json) =>
    GetBrandModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetBrandModelToJson(GetBrandModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
