import 'package:json_annotation/json_annotation.dart';

part 'post_brand_model.g.dart';

@JsonSerializable()
class PostBrandModel {
  int? id;
  String? category;

  PostBrandModel({this.id, this.category});

  factory PostBrandModel.fromJson(Map<String, dynamic> json) {
    return _$PostBrandModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostBrandModelToJson(this);
}
