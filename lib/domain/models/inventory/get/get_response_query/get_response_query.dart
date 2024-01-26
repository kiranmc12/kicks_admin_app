import 'package:json_annotation/json_annotation.dart';

part 'get_response_query.g.dart';

@JsonSerializable()
class GetResponseQuery {
  int? page;

  GetResponseQuery({this.page});

  factory GetResponseQuery.fromJson(Map<String, dynamic> json) {
    return _$GetResponseQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetResponseQueryToJson(this);
}
