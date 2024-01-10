import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String label;
  const CustomTextFormFieldWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: kWhite),
        ),
        Container(
          height: 50,
          decoration: const BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.all(kRadius5)),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter valid email address",
                focusedBorder: InputBorder.none,
                suffixIcon: Icon(Icons.email),
                labelStyle: TextStyle(fontSize: 16.0),
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fillColor: kWhite),
          ),
        ),
      ],
    );
  }
}
