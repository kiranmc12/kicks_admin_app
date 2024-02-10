import 'package:json_annotation/json_annotation.dart';

part 'delete_coupon_model.g.dart';

@JsonSerializable()
class DeleteCouponModel {
  @JsonKey(name: 'id')
  int? couponId;

  DeleteCouponModel({this.couponId});

  factory DeleteCouponModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteCouponModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteCouponModelToJson(this);
}
