// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) => OrderDetails(
      orderId: json['OrderID'] as int?,
      address: json['Address'] as String?,
      phone: json['Phone'] as String?,
      products: (json['Products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: json['TotalAmount'] as int?,
      couponUsed: json['CouponUsed'] as String?,
      orderStatus: json['OrderStatus'] as String?,
      paymentStatus: json['PaymentStatus'] as String?,
    );

Map<String, dynamic> _$OrderDetailsToJson(OrderDetails instance) =>
    <String, dynamic>{
      'OrderID': instance.orderId,
      'Address': instance.address,
      'Phone': instance.phone,
      'Products': instance.products,
      'TotalAmount': instance.totalAmount,
      'CouponUsed': instance.couponUsed,
      'OrderStatus': instance.orderStatus,
      'PaymentStatus': instance.paymentStatus,
    };
