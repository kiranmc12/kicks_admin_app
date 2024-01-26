import 'package:json_annotation/json_annotation.dart';

part 'edit_inventory_details_query.g.dart';

@JsonSerializable()
class EditInventoryDetailsQuery {
  int? id;

  EditInventoryDetailsQuery({this.id});

  factory EditInventoryDetailsQuery.fromJson(Map<String, dynamic> json) {
    return _$EditInventoryDetailsQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditInventoryDetailsQueryToJson(this);
}
