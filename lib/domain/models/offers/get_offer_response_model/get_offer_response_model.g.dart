// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_offer_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOfferResponseModel _$GetOfferResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetOfferResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Offers.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetOfferResponseModelToJson(
        GetOfferResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
