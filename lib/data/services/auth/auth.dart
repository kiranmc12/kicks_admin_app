import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/auth/login_model/login_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/login_response/login_response.dart';
import 'package:kicks_sneakerapp/domain/repositories/authentication_repository.dart';

class ApiAuth implements AuthRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));

  @override
  Future<Either<Failure, LoginResponse>> signIn(LoginModel loginModel) async {
    try {
      print(loginModel.toJson());
      final response =
          await _dio.post(ApiEndpoints.signIn, data: loginModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(LoginResponse.fromJson(response.data));
      } else {
        return Left(
            Failure(message: LoginResponse.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }
}
