import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_coupon_response_model.g.dart';

@JsonSerializable()
class GetCouponResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetCouponResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCouponResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCouponResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCouponResponseModelToJson(this);
}
