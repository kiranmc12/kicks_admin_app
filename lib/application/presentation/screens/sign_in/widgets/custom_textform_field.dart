import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/validator_functions/validator.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String hintText;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: kWhite),
        ),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return TextFormField(
              controller: widget.controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (widget.isPassword && value!.isEmpty) {
                  return 'Enter password';
                } else if (widget.isPassword && value!.length < 8) {
                  return 'Password must contain 8 characters';
                } else if (!widget.isPassword || value!.isEmpty) {
                  return isValidEmail(value!) ? null : 'Enter valid email';
                }
                return null;
              },
              obscureText: widget.isPassword ? obscure : false,
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                hintText: widget.hintText,
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
                suffixIcon: !widget.isPassword
                    ? const Icon(Icons.email, color: kBlack)
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(
                          obscure ? Icons.remove_red_eye : Iconsax.eye_outline,
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
