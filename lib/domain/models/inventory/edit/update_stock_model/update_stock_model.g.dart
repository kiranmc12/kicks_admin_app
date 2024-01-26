// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStockModel _$UpdateStockModelFromJson(Map<String, dynamic> json) =>
    UpdateStockModel(
      productId: json['product_id'] as int,
      stock: json['stock'] as int,
    );

Map<String, dynamic> _$UpdateStockModelToJson(UpdateStockModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'stock': instance.stock,
    };
