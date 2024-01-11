import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/errors.dart';
import 'package:kicks_sneakerapp/domain/models/login_model/login_model.dart';
import 'package:kicks_sneakerapp/domain/models/login_response/login_response.dart';

abstract class AuthRepository {
  Future<Either<ErrorMsg, LoginResponse>> signIn(LoginModel loginModel);
}
