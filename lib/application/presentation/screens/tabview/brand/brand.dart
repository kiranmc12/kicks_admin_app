import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/brand/widgets/add_brand_tile_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/brand/widgets/brand_view.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class BrandsTab extends StatelessWidget {
  const BrandsTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<BrandsBloc>().add(const BrandsEvent.getBrand());
    });
    return Column(
      children: [
        const Text("Add a Brand"),
        const AddBrandTileWidget(),
        const Divider(),
        Text(
          "Available Brands",
          style: tektur(fontSize: 0.04),
        ),
        const BrandView(),
      
      ],
    );
  }
}
