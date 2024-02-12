import 'package:json_annotation/json_annotation.dart';

part 'offers.g.dart';

@JsonSerializable()
class Offers {
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'discount_rate')
  int? discountRate;
  @JsonKey(name: 'Valid')
  bool? valid;

  Offers({this.id, this.categoryId, this.discountRate, this.valid});

  factory Offers.fromJson(Map<String, dynamic> json) => _$OffersFromJson(json);

  Map<String, dynamic> toJson() => _$OffersToJson(this);
}
