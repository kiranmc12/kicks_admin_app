import 'package:json_annotation/json_annotation.dart';

part 'update_image_query.g.dart';

@JsonSerializable()
class UpdateImageQuery {
  int? id;

  UpdateImageQuery({this.id});

  factory UpdateImageQuery.fromJson(Map<String, dynamic> json) {
    return _$UpdateImageQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateImageQueryToJson(this);
}
