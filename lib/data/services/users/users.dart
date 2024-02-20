import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/models/users/block_unblock_user_query/block_unblock_user_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_query/get_users_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_response_model/get_users_response_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/user_repository.dart';

class UsersApi implements UserRepository {
  final ApiService apiService = ApiService(
      dio: Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl)),
      baseUrl: ApiEndpoints.baseUrl);

  @override
  Future<Either<Failure, SucessModel>> blockUser(
      {required BlockUnblockUserQuery blockUnblockUserQuery}) async {
    try {
      final response = await apiService.put(ApiEndpoints.blockUsers,
          queryParameters: blockUnblockUserQuery.toJson());
      if (response.statusCode == 200) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UsersResponseModel>> getUsers(
      {required GetUsersQuery getUsersQuery}) async {
    try {
      final response = await apiService.get(ApiEndpoints.getUsers,
          queryParameters: getUsersQuery.toJson());
      print(response.data);
      if (response.statusCode == 200) {
        return Right(UsersResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: UsersResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SucessModel>> unBlockUser(
      {required BlockUnblockUserQuery blockUnblockUserQurrey}) async {
    try {
      final response = await apiService.put(ApiEndpoints.unblockUsers,
          queryParameters: blockUnblockUserQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }
}
