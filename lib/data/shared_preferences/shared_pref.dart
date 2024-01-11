import 'package:kicks_sneakerapp/domain/models/token/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String accessKey = 'access_key';
  static const String refreshKey = 'refresh_key';
  static const String isLogged = 'is_loggedIn';

  static Future<void> setToken({required TokenModel tokenModel}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(accessKey, tokenModel.accessToken);
    preferences.setString(refreshKey, tokenModel.refreshToken);
  }

  static Future<void> setAcessToken({required String accessToken}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(accessKey, accessToken);
  }

  static Future<TokenModel> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String accessToken = preferences.getString(accessKey) ?? '';
    String refreshToken = preferences.getString(refreshKey) ?? '';
    return TokenModel(accessToken: accessToken, refreshToken: refreshToken);
  }

  static Future<void> setLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(isLogged, true);
  }

  static Future<bool> getLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(isLogged) ?? false;
  }

  static Future<void> removeLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }
}
