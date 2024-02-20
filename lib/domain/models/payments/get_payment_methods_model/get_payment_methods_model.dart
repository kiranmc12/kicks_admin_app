import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_payment_methods_model.g.dart';

@JsonSerializable()
class GetPaymentMethodsModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetPaymentMethodsModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetPaymentMethodsModel.fromJson(Map<String, dynamic> json) {
    return _$GetPaymentMethodsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPaymentMethodsModelToJson(this);
}
