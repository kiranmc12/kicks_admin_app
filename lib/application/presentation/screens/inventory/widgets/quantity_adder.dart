import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';

class QuantityAdder extends StatelessWidget {
  const QuantityAdder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Add Quantity'),
        kWidth30,
        IconButton(
            onPressed: () {
              context
                  .read<AddInventoryBloc>()
                  .add(const AddInventoryEvent.decrementQuantity());
            },
            icon: const Icon(Iconsax.minus_cirlce)),
        CustomTextField(
          hintText: '0',
          controller:
              context.read<AddInventoryBloc>().productQuantityController,
          width: sWidth * 0.25,
          textAlign: TextAlign.center,
        ),
        IconButton(
            onPressed: () {
              context
                  .read<AddInventoryBloc>()
                  .add(const AddInventoryEvent.incrementQuantity());
            },
            icon: const Icon(Iconsax.add_circle))
      ],
    );
  }
}
