import 'package:json_annotation/json_annotation.dart';

part 'update_stock_model.g.dart';

@JsonSerializable()
class UpdateStockModel {
  @JsonKey(name: 'product_id')
  int productId;
  int stock;

  UpdateStockModel({required this.productId, required this.stock});

  factory UpdateStockModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateStockModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateStockModelToJson(this);
}
