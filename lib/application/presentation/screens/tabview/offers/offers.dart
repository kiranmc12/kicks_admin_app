import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/offers/widgets/add_offer_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/offers/widgets/offer_list_view.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Add an offer"),
        const AddOfferTile(),
        Text(
          "Available offers",
          style: roboto(),
        ),
        const OfferListView()
      ],
    );
  }
}
