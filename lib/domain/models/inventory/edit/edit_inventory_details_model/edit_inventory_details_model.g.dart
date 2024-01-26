// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_inventory_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditInventoryDetailsModel _$EditInventoryDetailsModelFromJson(
        Map<String, dynamic> json) =>
    EditInventoryDetailsModel(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      categoryId: json['category_id'] as int?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$EditInventoryDetailsModelToJson(
        EditInventoryDetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'category_id': instance.categoryId,
      'size': instance.size,
    };
