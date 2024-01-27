import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key, required this.size});
  final String size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context
                .read<AddInventoryBloc>()
                .add(AddInventoryEvent.pickSize(size: size));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: state.size == size ? kBlack : kWhite,
                borderRadius: const BorderRadius.all(kRadius5),
                border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Uk $size ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: state.size == size ? kWhite : kBlack),
              ),
            ),
          ),
        );
      },
    );
  }
}
