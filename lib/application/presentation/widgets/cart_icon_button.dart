import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: kGrey,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.ordersScreen);
            },
            icon: const Icon(Iconsax.shopping_bag),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Icon(
            Icons.circle,
            size: 15,
            color: kBlack,
          ),
        ),
      ],
    );
  }
}
