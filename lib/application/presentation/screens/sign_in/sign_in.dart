import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/sign_in/widgets/custom_textform_field.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';
import 'package:kicks_sneakerapp/domain/models/auth/login_model/login_model.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: height,
            child: Form(
                key: context.read<AuthBloc>().signInKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Kicks Admin",
                      style: TextStyle(fontSize: 30.0, color: kWhite),
                    ),
                    kHeight100,
                    CustomTextFormFieldWidget(
                      label: 'Email',
                      hintText: "Enter valid email",
                      controller: context.read<AuthBloc>().emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    kHeight30,
                    CustomTextFormFieldWidget(
                      label: 'Password',
                      hintText: "Enter valid password",
                      controller: context.read<AuthBloc>().passwordController,
                      keyboardType: TextInputType.name,
                      isPassword: true,
                    ),
                    kHeight30,
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                         if (state.hasError && state.message != null) {
                           showSnack(
                            context: context,
                            message: state.message!,
                            color: kRed);
                        }

                        if (state.loginResponse != null && state.message != null) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Routes.bottomNav, (route) => false);

                        showSnack(
                            context: context,
                            message: state.message!,
                            color: kGreen);
                        }
                     
                      },
                      builder: (context, state) {
                        if (state.isLoading) {
                          return SizedBox(
                            width: sWidth * 0.30,
                            child: const LoadingIndicator(
                                indicatorType: Indicator.ballPulse),
                          );
                        }
                        return Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              if (context
                                  .read<AuthBloc>()
                                  .signInKey
                                  .currentState!
                                  .validate()) {
                                FocusScope.of(context).unfocus();
                                context.read<AuthBloc>().add(AuthEvent.signIn(
                                    loginModel: LoginModel(
                                        password: context
                                            .read<AuthBloc>()
                                            .passwordController
                                            .text
                                            .trim(),
                                        email: context
                                            .read<AuthBloc>()
                                            .emailController
                                            .text
                                            .trim())));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: kWhite),
                              fixedSize: Size(sWidth * 0.30, sWidth * 0.10),
                              backgroundColor: kBlack,
                              foregroundColor: kWhite,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(kRadius5)),
                            ),
                            child: const Text("Sign-in"),
                          ),
                        );
                      },
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
