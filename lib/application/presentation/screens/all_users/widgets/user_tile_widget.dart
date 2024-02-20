import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/users/users_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/show_dialog/show_dialog.dart';
import 'package:kicks_sneakerapp/domain/models/users/block_unblock_user_query/block_unblock_user_query.dart';
import 'package:kicks_sneakerapp/domain/models/users/get_users_response_model/user.dart';

class UserTileWidget extends StatelessWidget {
  final User user;
  const UserTileWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.40,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  kWidth10,
                  CircleAvatar(
                    backgroundColor: kWhite,
                    radius: 30,
                    child: Icon(
                      EvaIcons.person,
                      size: sWidth * 0.09,
                    ),
                  ),
                  kWidth30,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.email!,
                        style: roboto(),
                      ),
                      Text(
                        user.name!,
                        style: roboto(),
                      ),
                      Text(
                        user.phone!,
                        style: roboto(),
                      ),
                    ],
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        if (!user.blockStatus!) {
                          void blockUser() async {
                            context.read<UsersBloc>().add(UsersEvent.blockUser(
                                blockUnblockUserQurrey:
                                    BlockUnblockUserQuery(id: user.id)));
                          }

                          await customShowDialog(
                            context: context,
                            onPress: blockUser,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              user.blockStatus! ? kRed.withOpacity(0.3) : kRed),
                      child: Text(
                        "Block",
                        style:
                            roboto(color: kWhite, fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      onPressed: () async {
                        if (user.blockStatus!) {
                          void unblock() async {
                            context.read<UsersBloc>().add(
                                UsersEvent.unBlockUser(
                                    blockUnblockUserQurrey:
                                        BlockUnblockUserQuery(id: user.id)));
                          }

                          await customShowDialog(
                              context: context, onPress: unblock);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: !user.blockStatus!
                              ? kGreen.withOpacity(0.3)
                              : kGreen,
                          foregroundColor: kWhite),
                      child: Text(
                        "Unblock",
                        style:
                            roboto(color: kWhite, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
