import 'package:json_annotation/json_annotation.dart';

part 'delete_offer_query.g.dart';

@JsonSerializable()
class DeleteOfferQuery {
  @JsonKey(name: 'id')
  int? offerId;

  DeleteOfferQuery({this.offerId});

  factory DeleteOfferQuery.fromJson(Map<String, dynamic> json) {
    return _$DeleteOfferQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteOfferQueryToJson(this);
}
