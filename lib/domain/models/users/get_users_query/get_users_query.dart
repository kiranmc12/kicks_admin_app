import 'package:json_annotation/json_annotation.dart';

part 'get_users_query.g.dart';

@JsonSerializable()
class GetUsersQuery {
  int? page;

  GetUsersQuery({this.page});

  factory GetUsersQuery.fromJson(Map<String, dynamic> json) {
    return _$GetUsersQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUsersQueryToJson(this);
}
