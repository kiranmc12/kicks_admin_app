import 'package:json_annotation/json_annotation.dart';

import 'order_detail.dart';

part 'order_details_model.g.dart';

@JsonSerializable()
class OrderDetailsModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  OrderDetails? data;
  dynamic error;

  OrderDetailsModel({this.statusCode, this.message, this.data, this.error});

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$OrderDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderDetailsModelToJson(this);
}
