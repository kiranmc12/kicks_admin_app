import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';

import '../../../../../domain/models/inventory/edit/update_stock_model/update_stock_model.dart';

class StockUpdaterWidget extends StatelessWidget {
  const StockUpdaterWidget({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Row(
          children: [
            Column(
              children: [
const Text('Available Stock:'),
        BlocConsumer<EditInventoryBloc, EditInventoryState>(
          listener: (context, state) {
            if (state.hasError || state.isUpdated) {
              showSnack(
                  context: context,
                  message: state.message!,
                  color: state.isUpdated ? kGreen : kRed);
            } else if (state.isDeleted) {
              showSnack(context: context, message: state.message!, color: kRed);
              context
                  .read<GetInventoryBloc>()
                  .add(const GetInventoryEvent.getInventoryCall());
              Navigator.pop(context);
            } else if (state.stock > inventory.stock!) {
              showSnack(
                  context: context,
                   message: state.message!, color: kGreen);
            }
          },
          builder: (context, state) {
            return Text(
              state.stock.toString(),
              style: priceStyle,
            );
          },
        ),
        kHeight10,
              ],
            ),
            kWidth30,
            IconButton(
                onPressed: () {
                  context
                      .read<EditInventoryBloc>()
                      .add(const EditInventoryEvent.decrementQuantity());
                },
                icon: const Icon(Iconsax.minus_cirlce)),
            Form(
              key: context.read<EditInventoryBloc>().stockformKey,
              child: CustomTextField(
                controller:
                    context.read<EditInventoryBloc>().stockUpdateController,
                textInputType: TextInputType.number,
                hintText: '0',
                width: sWidth * 0.20,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
                onPressed: () {
                  context
                      .read<EditInventoryBloc>()
                      .add(const EditInventoryEvent.incrementQuantity());
                },
                icon: const Icon(Iconsax.add_circle)),
          ],
        ),
        kHeight10,
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              if (context
                  .read<EditInventoryBloc>()
                  .stockformKey
                  .currentState!
                  .validate()) {
                context.read<EditInventoryBloc>().add(EditInventoryEvent.addStock(
                    updateStockModel: UpdateStockModel(
                        productId: inventory.id!,
                        stock: int.parse(context
                            .read<EditInventoryBloc>()
                            .stockUpdateController
                            .text
                            .trim()))));
              }
            },
            style: elevatedButtonStyleBlack,
            child: const Text('Update Inventory Stock'),
          ),
        ),
      ],
    );
  }
}
