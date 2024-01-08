import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/sign_in/widgets/custom_textform_field.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: SizedBox(
            height: height,
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Kicks",
                  style: TextStyle(fontSize: 30.0, color: kWhite),
                ),
                kHeight100,
                CustomTextFormFieldWidget(label: 'Email',),
                kHeight30,
                CustomTextFormFieldWidget(label: 'Password',),
                kHeight30,
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sign In"),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhite),
                      fixedSize: Size(sWidth * 0.30, sWidth * 0.10),
                      backgroundColor: kBlack,
                      foregroundColor: kWhite,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(kRadius5)),
                    ),
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
