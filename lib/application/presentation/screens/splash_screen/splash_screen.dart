import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/sign_in/sign_in.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const ScreenSignIn(), // Replace with your target screen
        ),
      );
    });
    return const Scaffold(
      backgroundColor: kBlack,
      body: Center(
        child: Text(
          "Kicks",
          style: TextStyle(
            color: kWhite,
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }
}
