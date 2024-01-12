import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/validator_functions/validator.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final String hintText;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.label,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: kWhite),
        ),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return TextFormField(
              controller: controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (isPassword && value!.isEmpty) {
                  return 'Enter password';
                } else if (isPassword && value!.length < 8) {
                  return 'Password must contain 8 characters';
                } else if (!isPassword || value!.isEmpty) {
                  return isValidEmail(value!) ? null : 'Enter valid email';
                }
                return null;
              },
              obscureText: isPassword ? state.obscure : false,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hintText,
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                      color: Colors.red), // Adjust the color as needed
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                      color: Colors.blue), // Adjust the color as needed
                ),
                labelStyle: const TextStyle(fontSize: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                fillColor: kWhite,
                filled: true,
                suffixIcon: !isPassword
                    ? const Icon(Icons.email, color: kBlack)
                    : IconButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.obscure());
                        },
                        icon: Icon(
                          state.obscure
                              ? Icons.remove_red_eye
                              : Iconsax.eye_outline,
                          color: kBlack,
                        ),
                      ),
              ),
            );
          },
        ),
      ],
    );
  }
}
