import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/image/update_image_query/update_image_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';

class EditImageTile extends StatelessWidget {
  const EditImageTile({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<EditInventoryBloc>().add(EditInventoryEvent.updateImage(
            updateInventoryImageQurrey: UpdateImageQuery(id: inventory.id!)));
      },
      child: BlocBuilder<EditInventoryBloc, EditInventoryState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
            height: sWidth * 0.70,
            width: sWidth * 0.70,
            decoration: const BoxDecoration(
                color: kGrey, borderRadius: BorderRadius.all(kRadius10)),
            child: state.isImageUpaloding
                ? const LoadingAnimation(width: 0.15)
                : SizedBox(
                    width: double.infinity,
                    child: state.image != null
                        ? Image.file(state.image!.fileImage)
                        : state.networkImage == null
                            ? Image.network(inventory.image!)
                            : Image.network(state.networkImage!)),
          );
        },
      ),
    );
  }
}
