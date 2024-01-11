import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_pref.dart';
import 'package:kicks_sneakerapp/domain/models/login_model/login_model.dart';
import 'package:kicks_sneakerapp/domain/models/login_response/login_response.dart';
import 'package:kicks_sneakerapp/domain/models/token/token.dart';
import 'package:kicks_sneakerapp/domain/repositories/authentication_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> signInKey = GlobalKey<FormState>();

  final AuthRepository apiAuth;

  AuthBloc(this.apiAuth) : super(AuthState.initial()) {
    on<_SignIn>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await apiAuth.signIn(event.loginModel);
      result.fold((failure) {
        emit(state.copyWith(
            hasError: true, isLoading: false, message: failure.message));
      }, (repsonseModel) async {
        emit(state.copyWith(
            isLoading: false,
            loginResponse: repsonseModel,
            message: repsonseModel.message));

        await SharedPref.setToken(
          tokenModel: TokenModel(
            accessToken: repsonseModel.data!.accessToken!,
            refreshToken: repsonseModel.data!.accessToken!,
          ),
        );
        await SharedPref.setLogin();
        emailController.clear();
        passwordController.clear();
      });
    });
    on<_SignOut>((event, emit) => SharedPref.removeLogin());
    on<_LoggedIn>((event, emit) async {
      final login = await SharedPref.getLogin();
      emit(state.copyWith(isLoggedIn: login));
    });
  }
}
