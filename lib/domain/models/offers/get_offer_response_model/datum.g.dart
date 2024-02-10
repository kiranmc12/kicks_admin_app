// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      discountRate: json['discount_rate'] as int?,
      valid: json['Valid'] as bool?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'discount_rate': instance.discountRate,
      'Valid': instance.valid,
    };
