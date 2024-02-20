// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['ID'] as int?,
      paymentName: json['payment_name'] as String?,
      isDeleted: json['is_deleted'] as bool?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'ID': instance.id,
      'payment_name': instance.paymentName,
      'is_deleted': instance.isDeleted,
    };
