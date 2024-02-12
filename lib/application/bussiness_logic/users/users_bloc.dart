import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/models/users/block_unblock_user_query/block_unblock_user_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_query/get_users_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_response_model/user.dart';
import 'package:kicks_sneakerapp/domain/repositories/user_repository.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserRepository userApi;

  UsersBloc(this.userApi) : super(UsersState.initial()) {
    on<_GetUsers>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isBlocked: false,
        isUnBlocked: false,
      ));
      final result = await userApi.getUsers(getUsersQuery: event.getUsersQuery);

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasEroor: true,
              isBlocked: false,
              message: "Can't connect to the server,Please try again",
              isUnBlocked: false)), (userResponse) {
        print(userResponse.users);
        print("Getuser");
        emit(state.copyWith(
            isLoading: false,
            hasEroor: false,
            isBlocked: false,
            isUnBlocked: false,
            message: "responseeeeeeeeeeee",
            userList: userResponse.users));
      });
    });
    on<_BlockUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: false, isBlocked: false, isUnBlocked: false));
      final result = await userApi.blockUser(
          blockUnblockUserQuery: event.blockUnblockUserQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              isBlocked: false,
              isUnBlocked: false,
              hasEroor: true,
              message: "Cant connect to the server,please try again")),
          (blockUserResponswe) => emit(state.copyWith(
              isLoading: false,
              isBlocked: true,
              hasEroor: false,
              isUnBlocked: false,
              message: "Sucessfully blocked the user")));
      add(UsersEvent.getUsers(getUsersQuery: GetUsersQuery(page: 1)));
    });

    on<_UnBlockUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: false, isBlocked: false, isUnBlocked: false));
      final result = await userApi.unBlockUser(
          blockUnblockUserQurrey: event.blockUnblockUserQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              isBlocked: false,
              isUnBlocked: false,
              hasEroor: true,
              message: "Cant connect to the server,please try again")),
          (blockUserResponswe) => emit(state.copyWith(
              isLoading: false,
              isBlocked: true,
              hasEroor: false,
              isUnBlocked: true,
              message: "Sucessfully unblocked the user")));
      add(UsersEvent.getUsers(getUsersQuery: GetUsersQuery(page: 1)));
    });
  }
}
