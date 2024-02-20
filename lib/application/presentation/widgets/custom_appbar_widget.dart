import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/cart_icon_button.dart';

AppBar appbarMaker({required String title, bool cart = false}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: tektur(fontSize: 0.05),
    ),
    actions: cart ? const [CartIconButton(), kWidth20] : null,
  );
}