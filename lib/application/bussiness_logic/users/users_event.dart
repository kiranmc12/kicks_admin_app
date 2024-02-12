part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.getUsers({required GetUsersQuery getUsersQuery}) =
      _GetUsers;
  const factory UsersEvent.blockUser(
      {required BlockUnblockUserQuery blockUnblockUserQurrey}) = _BlockUser;
  const factory UsersEvent.unBlockUser(
      {required BlockUnblockUserQuery blockUnblockUserQurrey}) = _UnBlockUser;
}
