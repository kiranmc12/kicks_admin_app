import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'payment_name')
  String? paymentName;
  @JsonKey(name: 'is_deleted')
  bool? isDeleted;

  Datum({this.id, this.paymentName, this.isDeleted});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
