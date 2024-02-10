import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class BrandSelector extends StatelessWidget {
  const BrandSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BrandsBloc>().add(const BrandsEvent.getBrand());
    });
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text("Select Brand"),
            kWidth30,
            DropdownButton(
              value: state.brand,
              borderRadius: const BorderRadius.all(kRadius20),
              items: context
                  .read<BrandsBloc>()
                  .brandMap
                  .keys
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (selectedBrand) {
                context.read<AddInventoryBloc>().add(
                    AddInventoryEvent.selectBrand(
                        seletedBrand:
                            context.read<BrandsBloc>().brandMap[selectedBrand]!,
                        brand: selectedBrand!));
              },
              hint: Text(
                'Brand ',
                style: roboto(),
              ),
              icon: const Icon(
                Iconsax.arrow_square_down,
                color: kBlack,
              ),
            )
          ],
        );
      },
    );
  }
}
