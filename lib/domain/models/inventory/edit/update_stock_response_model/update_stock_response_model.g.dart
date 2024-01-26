// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStockResponseModel _$UpdateStockResponseModelFromJson(
        Map<String, dynamic> json) =>
    UpdateStockResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$UpdateStockResponseModelToJson(
        UpdateStockResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
