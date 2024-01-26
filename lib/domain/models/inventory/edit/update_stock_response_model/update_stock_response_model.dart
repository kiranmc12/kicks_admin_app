import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'update_stock_response_model.g.dart';

@JsonSerializable()
class UpdateStockResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  UpdateStockResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory UpdateStockResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateStockResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateStockResponseModelToJson(this);
}
