// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    OrderDetailsModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderDetails.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$OrderDetailsModelToJson(OrderDetailsModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
