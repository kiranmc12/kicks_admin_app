import 'package:json_annotation/json_annotation.dart';

part 'delete_inventory_model.g.dart';

@JsonSerializable()
class DeleteInventoryModel {
  int id;

  DeleteInventoryModel({required this.id});

  factory DeleteInventoryModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteInventoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteInventoryModelToJson(this);
}
