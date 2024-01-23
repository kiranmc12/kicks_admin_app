import 'package:json_annotation/json_annotation.dart';

part 'put_brand_model.g.dart';

@JsonSerializable()
class PutBrandModel {
  String current;
  @JsonKey(name: 'new')
  String newName;

  PutBrandModel({required this.current, required this.newName});

  factory PutBrandModel.fromJson(Map<String, dynamic> json) {
    return _$PutBrandModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PutBrandModelToJson(this);
}
