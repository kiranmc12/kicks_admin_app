import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/edit_inventory_details_model/edit_inventory_details_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/edit_inventory_details_query.dart/edit_inventory_details_query.dart';
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
              'Name : ',
              style: headStyle,
            ),
            CustomTextField(
                width: sWidth * 0.50,
                controller:
                    context.read<EditInventoryBloc>().nameUpdateController,
                hintText: inventory.productName!)
          ],
        ),
        kHeight10,
        Row(
          children: [
            const Text(
              'Size : ',
              style: headStyle,
            ),
            kWidth10,
            CustomTextField(
                width: sWidth * 0.50,
                controller:
                    context.read<EditInventoryBloc>().sizeUpdateConttroller,
                hintText: inventory.size!)
          ],
        ),
        kHeight10,
        Row(
          children: [
            const Text(
              'Price : ',
              style: headStyle,
            ),
            CustomTextField(
                width: sWidth * 0.50,
                controller:
                    context.read<EditInventoryBloc>().priceUpdateController,
                hintText: inventory.price.toString())
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
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
              onPressed: () {
                context
                    .read<EditInventoryBloc>()
                    .add(EditInventoryEvent.editAllOtherDetails(
                        editInventoryDetailsModel: EditInventoryDetailsModel(
                          categoryId: inventory.categoryId,
                          name: context.read<EditInventoryBloc>().nameUpdateController.text.trim(),
                          price:int.parse(context.read<EditInventoryBloc>().priceUpdateController.text.trim()),
                          size: context.read<EditInventoryBloc>().sizeUpdateConttroller.text.trim()
          
                        ),
                        editInventoryDetailsQuery: EditInventoryDetailsQuery(id:inventory.id )));
              },
              style: elevatedButtonStyle,
              child: const Text("Edit")),
        )
      ],
    );
  }
}
