part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {required bool isLoading,
      required bool hasError,
      required bool obscure,
      required bool isLoggedIn,
      String? message,
      LoginResponse? loginResponse}) = _Initial;

  factory AuthState.initial() => const AuthState(
      isLoading: false, hasError: false, isLoggedIn: false, obscure: true);
}
