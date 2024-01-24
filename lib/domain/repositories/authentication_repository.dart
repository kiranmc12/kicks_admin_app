import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/errors.dart';
import 'package:kicks_sneakerapp/domain/models/auth/login_model/login_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/login_response/login_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponse>> signIn(LoginModel loginModel);
}
