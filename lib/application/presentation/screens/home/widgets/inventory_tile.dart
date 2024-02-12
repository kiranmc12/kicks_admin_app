import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';

import '../../../utils/colors.dart';

class InventoryTile extends StatelessWidget {
  final Inventory inventory;
  const InventoryTile({
    super.key,
    required this.inventory,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Set crossAxisAlignment to start
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Stack(
            children: [
              Container(
                width: sWidth * 0.7,
                height: sWidth * 0.48,
                decoration: const BoxDecoration(
                  color: kGrey,
                  borderRadius: BorderRadius.all(kRadius10),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    inventory.image!,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(child: Text("No image available"));
                    },
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: kWhite,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.editScreen,
                          arguments: inventory);
                    },
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          inventory.productName!,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: roboto(fontSize: 0.035, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Set mainAxisAlignment to start
          children: [
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Set crossAxisAlignment to start
              children: [
                Text(
                  '₹${inventory.discountedPrice!.roundToDouble()}',
                  style: tektur(
                    fontWeight: FontWeight.bold,
                    fontSize: 0.035,
                  ),
                ),
                Text('₹${inventory.price!.roundToDouble()}',
                    style: tektur(
                        textdecoration: TextDecoration.lineThrough,
                        fontSize: 0.03))
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(kRadius5), color: kGreen),
              child: Text(
                "50%",
                textAlign: TextAlign.center,
                style: roboto(color: kWhite, fontWeight: FontWeight.bold),
              ),
            ),
            kWidth10,
          ],
        ),
      ],
    );
  }
}
