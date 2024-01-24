import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

import '../../routes/routes.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Timer(const Duration(seconds: 3), () {
      context.read<AuthBloc>().add(const AuthEvent.loggedIn());
    });

    return Scaffold(
      backgroundColor: kBlack,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isLoggedIn) {
            Navigator.popAndPushNamed(context, Routes.bottomNav);
          } else {
            Navigator.popAndPushNamed(context, Routes.signInPage);
          }
        },
        child: Center(
          child: Text(
            "Kicks",
            style: tektur(color: kWhite, fontSize: 0.08),
          ),
        ),
      ),
    );
  }
}
