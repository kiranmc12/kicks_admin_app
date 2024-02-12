import 'package:json_annotation/json_annotation.dart';

part 'block_unblock_user_query.g.dart';

@JsonSerializable()
class BlockUnblockUserQuery {
  int? id;

  BlockUnblockUserQuery({this.id});

  factory BlockUnblockUserQuery.fromJson(Map<String, dynamic> json) {
    return _$BlockUnblockUserQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockUnblockUserQueryToJson(this);
}
