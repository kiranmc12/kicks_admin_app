import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'brand_response_model.g.dart';

@JsonSerializable()
class BrandResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  BrandResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory BrandResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BrandResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandResponseModelToJson(this);
}
