import 'package:json_annotation/json_annotation.dart';

part 'edit_inventory_details_model.g.dart';

@JsonSerializable()
class EditInventoryDetailsModel {
  String? name;
  double? price;
  @JsonKey(name: 'category_id')
  int? categoryId;
  String? size;

  EditInventoryDetailsModel({
    this.name,
    this.price,
    this.categoryId,
    this.size,
  });

  factory EditInventoryDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$EditInventoryDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditInventoryDetailsModelToJson(this);
}
