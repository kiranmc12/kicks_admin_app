import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_brand_model.g.dart';

@JsonSerializable()
class GetBrandModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetBrandModel({this.statusCode, this.message, this.data, this.error});

  factory GetBrandModel.fromJson(Map<String, dynamic> json) {
    return _$GetBrandModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetBrandModelToJson(this);
}
