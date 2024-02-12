import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'get_users_response_model.g.dart';

@JsonSerializable()
class UsersResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  @JsonKey(name: 'data')
  List<User>? users;
  dynamic error;

  UsersResponseModel({
    this.statusCode,
    this.message,
    this.users,
    this.error,
  });

  factory UsersResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UsersResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UsersResponseModelToJson(this);
}
