import 'package:json_annotation/json_annotation.dart';

part 'add_payement_methods_model.g.dart';

@JsonSerializable()
class AddPayementMethodsModel {
  @JsonKey(name: 'payment_method')
  String? paymentMethod;

  AddPayementMethodsModel({this.paymentMethod});

  factory AddPayementMethodsModel.fromJson(Map<String, dynamic> json) {
    return _$AddPayementMethodsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddPayementMethodsModelToJson(this);
}
