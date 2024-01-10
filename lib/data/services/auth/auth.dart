import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/errors.dart';
import 'package:kicks_sneakerapp/domain/models/login_model/login_model.dart';
import 'package:kicks_sneakerapp/domain/models/login_response_model/login_response_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/authentication_repository.dart';

@injectable
class ApiAuth implements AuthRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));

  @override
  Future<Either<ErrorMsg, LoginResponseModel>> signIn(
      LoginModel loginModel) async {
    try {
      final response =
          await _dio.post(ApiEndpoints.signIn, data: loginModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(LoginResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: LoginResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: 'something went wrong'));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(ErrorMsg(message: e.toString()));
    }
  }
}