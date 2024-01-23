import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class BrandsTab extends StatelessWidget {
  const BrandsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Add a Brand"),
        SizedBox(
          height: sWidth * 0.45,
          child: const Card(
            color: kGrey,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("Brand Name"),
                  kHeight10,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
