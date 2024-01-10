import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/errors.dart';
import 'package:kicks_sneakerapp/domain/models/login_model/login_model.dart';
import 'package:kicks_sneakerapp/domain/models/login_response_model/login_response_model.dart';

abstract class AuthRepository {

  Future<Either<ErrorMsg, LoginResponseModel>> signIn(LoginModel loginModel);

}
