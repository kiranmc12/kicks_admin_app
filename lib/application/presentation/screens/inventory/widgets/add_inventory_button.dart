import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';

class AddInventoryButton extends StatelessWidget {
  const AddInventoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddInventoryBloc, AddInventoryState>(
      listener: (context, state) {
        if (state.hasError) {
          Navigator.pop(context);
          showSnack(
              context: context,
              color: kRed,
              message: "Cannot add Inventory,Something went wrong");
        } else if (state.isLoading) {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: LoadingAnimation(width: 0.70),
                  ));
        } else if (state.isAdded) {
          Navigator.pop(context);
          showSnack(
              context: context,
              color: kGreen,
              message: "Inventory added successfully");
        }
      },
      builder: (context, state) {
        return Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton.icon(
            onPressed: () {
              if (context
                  .read<AddInventoryBloc>()
                  .inventoryKey
                  .currentState!
                  .validate()) {
                Map<String, dynamic> formMap = {};
                if (state.image != null) {
                  formMap['image'] = state.image!.multipartFile;
                } else {
                  showSnack(context: context, message: "Please add an Image");
                  return;
                }
                if (state.size == null) {
                  showSnack(
                      context: context,
                      color: kRed,
                      message: "Add size and try again");
                  return;
                } else {
                  formMap['category_id'] = state.brandId;
                }
                formMap['product_name'] = context
                    .read<AddInventoryBloc>()
                    .productNameController
                    .text
                    .trim();
                formMap['price'] = context
                    .read<AddInventoryBloc>()
                    .productPriceController
                    .text
                    .trim();
                formMap['stock'] = context
                    .read<AddInventoryBloc>()
                    .productQuantityController
                    .text
                    .trim();
                FormData formData = FormData.fromMap(formMap);
                print(formMap);
                context
                    .read<AddInventoryBloc>()
                    .add(AddInventoryEvent.addSneaker(formData: formData));
              }
            },
            icon: const Icon(Iconsax.add),
            label: const Text("Add sneaker"),
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: kWhite),
                fixedSize: Size(sWidth * 0.40, sWidth * 0.10),
                backgroundColor: kBlack,
                foregroundColor: kWhite,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(kRadius5))),
          ),
        );
      },
    );
  }
}
