import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';
import 'package:kicks_sneakerapp/domain/models/brand/post_brand_model/post_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/put_brand_model/put_brand_model.dart';

class AddBrandTileWidget extends StatelessWidget {
  const AddBrandTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sWidth * 0.45,
      width: sWidth,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brand Name",
                style: tektur(fontWeight: FontWeight.bold),
              ),
              CustomTextField(
                hintText: "Add brand name",
                color: kWhite,
                width: sWidth * 0.50,
                controller: context.read<BrandsBloc>().brandController,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: BlocBuilder<BrandsBloc, BrandsState>(
                  builder: (context, state) {
                    if (state.isAdding) {
                      return const LoadingAnimation(width: 0.10);
                    }
                    return TextButton.icon(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          state.isUpdating
                              ? context.read<BrandsBloc>().add(
                                  BrandsEvent.renameBrand(
                                      putBrandModel: PutBrandModel(
                                          current: context
                                              .read<BrandsBloc>()
                                              .curentBrand!,
                                          newName: context
                                              .read<BrandsBloc>()
                                              .brandController
                                              .text
                                              .trim())))
                              : context.read<BrandsBloc>().add(
                                  BrandsEvent.addBrand(
                                      postBrandModel: PostBrandModel(
                                          category: context
                                              .read<BrandsBloc>()
                                              .brandController
                                              .text
                                              .trim())));
                        },
                        icon: Icon(state.isUpdating
                            ? Icons.edit_note_outlined
                            : Icons.add),
                        label: Text(state.isUpdating
                            ? 'Edit Brand'
                            : 'Add Brand'));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
