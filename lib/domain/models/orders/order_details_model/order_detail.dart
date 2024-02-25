import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'order_detail.g.dart';

@JsonSerializable()
class OrderDetails {
  @JsonKey(name: 'OrderID')
  int? orderId;
  @JsonKey(name: 'Address')
  String? address;
  @JsonKey(name: 'Phone')
  String? phone;
  @JsonKey(name: 'Products')
  List<Product>? products;
  @JsonKey(name: 'TotalAmount')
  double? totalAmount;
  @JsonKey(name: 'CouponUsed')
  String? couponUsed;
  @JsonKey(name: 'OrderStatus')
  String? orderStatus;
  @JsonKey(name: 'PaymentStatus')
  String? paymentStatus;

  OrderDetails({
    this.orderId,
    this.address,
    this.phone,
    this.products,
    this.totalAmount,
    this.couponUsed,
    this.orderStatus,
    this.paymentStatus,
  });

  factory OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsToJson(this);
}
