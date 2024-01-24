import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/brand/brand.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/coupons/coupons.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/offers/offers.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenTabView extends StatelessWidget {
  const ScreenTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(sWidth, sHeight),
              child: TabBar(
                  labelStyle: tektur(fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      child: Text("Coupons"),
                    ),
                    Tab(
                      child: Text("Offers"),
                    ),
                    Tab(
                      child: Text("Brands"),
                    ),
                  ])),
          body: const Padding(
            padding: EdgeInsets.all(8.0),
            child:
                TabBarView(children: [CouponsTab(), OffersTab(), BrandsTab()]),
          ),
        ));
  }
}
