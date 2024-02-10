import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'discount_rate')
  int? discountRate;
  @JsonKey(name: 'Valid')
  bool? valid;

  Datum({this.id, this.categoryId, this.discountRate, this.valid});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
