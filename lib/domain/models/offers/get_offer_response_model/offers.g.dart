// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Offers _$OffersFromJson(Map<String, dynamic> json) => Offers(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      discountRate: json['discount_rate'] as int?,
      valid: json['Valid'] as bool?,
    );

Map<String, dynamic> _$OffersToJson(Offers instance) => <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'discount_rate': instance.discountRate,
      'Valid': instance.valid,
    };
