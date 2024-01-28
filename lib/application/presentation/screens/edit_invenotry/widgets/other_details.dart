import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';

class OtherDetails extends StatelessWidget {
  const OtherDetails({super.key, required this.inventory});

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Size : ',
              style: headStyle,
            ),
            Text(
              inventory.size!,
              style: priceStyle,
            )
          ],
        ),
        kHeight10,
        Row(
          children: [
            const Text(
              'Price : ',
              style: headStyle,
            ),
            Text(
              inventory.price.toString(),
              style: priceStyle,
            )
          ],
        ),
        kHeight10,
        Row(
          children: [
            const Text(
              'Offer price : ',
              style: headStyle,
            ),
            Text(
              inventory.discountedPrice.toString(),
              style: priceStyle,
            )
          ],
        ),
        kHeight10,
      ],
    );
  }
}
