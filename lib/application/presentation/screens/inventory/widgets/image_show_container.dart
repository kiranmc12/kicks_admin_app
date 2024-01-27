import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ImageShowContainer extends StatelessWidget {
  const ImageShowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<AddInventoryBloc>().add(const AddInventoryEvent.addImage());
          },
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
                height: sWidth * 0.70,
                width: sWidth * 0.70,
                decoration: const BoxDecoration(
                    color: kGrey, borderRadius: BorderRadius.all(kRadius10)),
                child: SizedBox(
                  width: double.infinity,
                  child: state.image != null
                        ? Image.file(state.image!.fileImage)
                        : Image.network(shoe1uRL)
                ),
              ),
              const Column(
                children: [Icon(Iconsax.image), Text('Add Image')],
              )
            ],
          ),
        );
      },
    );
  }
}
