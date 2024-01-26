import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.width = 500,
    this.textAlign = TextAlign.start,
    this.controller,
    this.color = kGrey,
    this.textCapitalization = TextCapitalization.words,
    this.textInputType = TextInputType.text,
  });

  final String hintText;
  final IconData? icon;
  final double width;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final Color color;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
        border: Border.all(
          color: Colors.grey, // Add the desired border color
          width: 1.0, // Adjust the border width as needed
        ),
      ),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'This field cannot be empty';
          }
          return null;
        },
        controller: controller,
        textCapitalization: textCapitalization,
        textAlign: textAlign,
        keyboardType: textInputType,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: kRed),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(),
          ),
          labelStyle: const TextStyle(fontSize: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          prefixIcon: icon != null ? Icon(icon) : null,
          hintText: hintText,
        ),
      ),
    );
  }
}
