import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/models/users/block_unblock_user_query/block_unblock_user_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_query/get_users_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_response_model/get_users_response_model.dart';

abstract class UserRepository {
  Future<Either<Failure, UsersResponseModel>> getUsers(
      {required GetUsersQuery getUsersQuery});

  Future<Either<Failure, SucessModel>> blockUser(
      {required BlockUnblockUserQuery blockUnblockUserQuery});

  Future<Either<Failure, SucessModel>> unBlockUser(
      {required BlockUnblockUserQuery blockUnblockUserQurrey});
}
