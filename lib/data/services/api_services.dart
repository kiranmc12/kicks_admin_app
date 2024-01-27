import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_pref.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';

class ApiService {
  final Dio dio;
  final String baseUrl;

  ApiService({required this.dio, required this.baseUrl});

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response =
          await dio.get(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response = await dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response = await dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response =
          await dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  _refreshAccessToken() async {
    try {
      final token =
          await SharedPref.getToken().then((token) => token.refreshToken);
      final response = await Dio(
              BaseOptions(baseUrl: baseUrl, headers: {'RefreshToken': token}))
          .get(ApiEndpoints.refreshUrl);
      print(response.statusCode);
            print(response.data);

      await SharedPref.setAcessToken(accessToken: response.data.toString());
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final accessToken =
        await SharedPref.getToken().then((token) => token.accessToken);
    dio.options.headers['Authorization'] = accessToken;
    return await dio.request(requestOptions.path,
        queryParameters: requestOptions.queryParameters,
        data: requestOptions.data);
  }
}
