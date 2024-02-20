import 'package:json_annotation/json_annotation.dart';

import 'orders.dart';

part 'get_all_orders_response_model.g.dart';

@JsonSerializable()
class GetAllOrdersResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Orders? data;
  dynamic error;

  GetAllOrdersResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetAllOrdersResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllOrdersResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllOrdersResponseModelToJson(this);
}
