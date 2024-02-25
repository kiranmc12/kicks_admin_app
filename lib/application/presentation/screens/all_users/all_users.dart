import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/users/users_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/all_users/widgets/user_tile_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_query/get_users_query.dart';

class ScreenUsers extends StatelessWidget {
  const ScreenUsers({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<UsersBloc>()
          .add(UsersEvent.getUsers(getUsersQuery: GetUsersQuery(page: 1)));
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Users List",
          style: roboto(fontWeight: FontWeight.bold, fontSize: 0.05),
        ),
        kHeight10,
        Expanded(
            child: BlocConsumer<UsersBloc, UsersState>(
          listener: (context, state) {
            if (state.isBlocked || state.isUnBlocked || state.hasEroor) {
              showSnack(
                  context: context,
                  message: state.message!,
                  color: state.isBlocked || state.hasEroor ? kRed : kGreen);
            }
          },
          builder: (context, state) {
            print(state.userList);
            if (state.isLoading) {
              return const LoadingAnimation(width: 0.29);
            } else if (state.userList != null && state.userList!.isNotEmpty) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return UserTileWidget(
                      user: state.userList![index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: state.userList!.length);
            } else {
              return const Center(
                child: Text("No users available"),
              );
            }
          },
        ))
      ],
    );
  }
}
