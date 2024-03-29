// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

Future<dynamic> customShowDialog(
    {required BuildContext context, Title? title, required Function onPress}) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kGreen, foregroundColor: kWhite),
                child: const Text('NO'),
              ),
              kWidth20,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  onPress();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kRed, foregroundColor: kWhite),
                child: const Text('YES'),
              )
            ],
            title: const Text('Are you sure?'),
          ));
}
