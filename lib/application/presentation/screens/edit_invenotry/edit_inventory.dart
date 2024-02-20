import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/edit_invenotry/widgets/edit_image_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/edit_invenotry/widgets/other_details.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/edit_invenotry/widgets/stock_updater_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/show_dialog/show_dialog.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/delete/delete_inventory_model/delete_inventory_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';

class ScreenEditInventory extends StatelessWidget {
  final Inventory inventory;
  const ScreenEditInventory({super.key, required this.inventory});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<EditInventoryBloc>().add(EditInventoryEvent.setStock(
          stock: inventory.stock!, image: inventory.image!));
    });
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Inventory",
          style: tektur(fontSize: 0.05),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              EditImageTile(inventory: inventory),
              kHeight10,
              Text(inventory.productName!),
              kHeight10,
              OtherDetails(inventory: inventory),
              kHeight10,
              StockUpdaterWidget(inventory: inventory),
              kHeight10,
              
              ElevatedButton(
                onPressed: () async {
                  void onDeleteBrand() async {
                    context.read<EditInventoryBloc>().add(
                        EditInventoryEvent.deleteInventory(
                            deleteInventoryQuery:
                                DeleteInventoryModel(id: inventory.id!)));
                  }

                  await customShowDialog(
                    context: context,
                    onPress: onDeleteBrand,
                  );
                },
                style: elevatedButtonStyleRed,
                child:  Text('Delete Invontory',style: tektur(color: kWhite,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
