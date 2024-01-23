import 'package:json_annotation/json_annotation.dart';

part 'delete_brand_model.g.dart';

@JsonSerializable()
class DeleteBrandModel {
  int id;

  DeleteBrandModel({required this.id});

  factory DeleteBrandModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteBrandModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteBrandModelToJson(this);
}
