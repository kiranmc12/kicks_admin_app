part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState(
      {required bool isLoading,
      required bool hasEroor,
      required bool isBlocked,
      String? message,
      required bool isUnBlocked,
      List<User>? userList}) = _Initial;

  factory UsersState.initial() => const UsersState(
      isLoading: false, hasEroor: false, isBlocked: false, isUnBlocked: false);
}
