import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class OfferListTile extends StatelessWidget {
  const OfferListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.229,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "name",
                style: roboto(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    ' % Discound',
                    style: TextStyle(color: kGreen),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Make Invalid',
                        style: TextStyle(color: kRed),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Make Valid',
                        style: TextStyle(color: kGreen),
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
