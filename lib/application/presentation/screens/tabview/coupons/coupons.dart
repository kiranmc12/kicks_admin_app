import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/coupons/widgets/add_coupon.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/coupons/widgets/avaiable_coupon_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class CouponsTab extends StatelessWidget {
  const CouponsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Add a Coupon"),
        const AddCouponWidget(),
        const Divider(),
        Text(
          "Available Coupons",
          style: roboto(),
        ),
        const AvailableCouponTile(),
        SizedBox(
          height: sWidth * 0.20,
        )
      ],
    );
  }
}
