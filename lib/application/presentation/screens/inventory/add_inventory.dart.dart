import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/widgets/add_inventory_button.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/widgets/brand_selector.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/widgets/image_show_container.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/widgets/quantity_adder.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/widgets/size_selector.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';

class ScreenAddSneakers extends StatelessWidget {
  const ScreenAddSneakers({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Form(
              key: context.read<AddInventoryBloc>().inventoryKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Add a new sneaker"),
                  kHeight10,
                  const ImageShowContainer(),
                  kHeight10,
                  const Text("Title"),
                  CustomTextField(
                    hintText: 'Item Name',
                    controller:
                        context.read<AddInventoryBloc>().productNameController,
                    icon: Iconsax.arrow_right2,
                  ),
                  kHeight10,
                  const Text("Price"),
                  CustomTextField(
                    hintText: '10000',
                    controller:
                        context.read<AddInventoryBloc>().productPriceController,
                        textInputType: TextInputType.number,
                    icon: Iconsax.dollar_circle,
                  ),
                  kHeight10,
                  const Text("Size Available"),
                  SizedBox(
                    width: sWidth,
                    child: const Row(
                      children: [
                        SizeSelector(size: "7"),
                        SizeSelector(size: "8"),
                        SizeSelector(size: "9"),
                        SizeSelector(size: "10"),
                        SizeSelector(size: "11"),
                      ],
                    ),
                  ),
                  kHeight10,
                  const BrandSelector(),
                  kHeight20,
                  const QuantityAdder(),
                  kHeight20,
                  AddInventoryButton(),
                  SizedBox(
                    height: sWidth * 0.30,
                  )
                ],
              )),
        )
      ],
    );
  }
}

