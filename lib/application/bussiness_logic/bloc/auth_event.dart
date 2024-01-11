part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({required LoginModel loginModel}) = _SignIn;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.loggedIn() = _LoggedIn;
}
