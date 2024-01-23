import 'admin.dart';

class Data {
  Admin? admin;
  String? accessToken;
  String? refreshToken;

  Data({this.admin, this.accessToken, this.refreshToken});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        admin: json['Admin'] == null
            ? null
            : Admin.fromJson(json['Admin'] as Map<String, dynamic>),
        accessToken: json['AccessToken'] as String?,
        refreshToken: json['RefreshToken'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'Admin': admin?.toJson(),
        'AccessToken': accessToken,
        'RefreshToken': refreshToken,
      };
}
