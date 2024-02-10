import 'package:json_annotation/json_annotation.dart';

part 'coupon_activate_query.g.dart';

@JsonSerializable()
class CouponActivateQuery {
  int? id;

  CouponActivateQuery({this.id});

  factory CouponActivateQuery.fromJson(Map<String, dynamic> json) {
    return _$CouponActivateQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponActivateQueryToJson(this);
}
