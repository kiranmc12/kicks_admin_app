import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/offers/offers_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';
import 'package:kicks_sneakerapp/domain/models/offers/add_offer_model/add_offer_model.dart';

class AddOfferTile extends StatelessWidget {
  const AddOfferTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BrandsBloc>().add(const BrandsEvent.getBrand());
    });
    return SizedBox(
      height: sWidth * 0.60,
      width: sWidth,
      child: BlocBuilder<OffersBloc, OffersState>(
        builder: (context, state) {
          return Card(
            color: kGrey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Offer Category", style: roboto()),
                  DropdownButton(
                    dropdownColor: kWhite,
                    value: state
                        .category, // Set the initial value or use a state variable
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    items: context
                        .read<BrandsBloc>()
                        .brandMap
                        .keys
                        .map<DropdownMenuItem<String>>((String value) =>
                            DropdownMenuItem<String>(
                                value: value, child: Text(value)))
                        .toList(),
                    onChanged: (selectedCategory) {
                      context.read<OffersBloc>().add(OffersEvent.selectCatogory(
                          selectedCatogory: context
                              .read<BrandsBloc>()
                              .brandMap[selectedCategory]!,
                          catogory: selectedCategory!));
                    },
                    hint: Text(
                      'Category',
                      style: roboto(),
                    ),
                    icon: const Icon(
                      Iconsax.arrow_square_down,
                      color: kBlack,
                    ),
                  ),
                  kHeight10,
                  const Text("Discount Percentage"),
                  CustomTextField(
                    controller:
                        context.read<OffersBloc>().offerAmountController,
                    hintText: "Percentage",
                    width: sWidth * 0.50,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton.icon(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          context.read<OffersBloc>().add(OffersEvent.addOffer(
                              addOfferModel: AddOfferModel(
                                  categoryId: state.categoryId,
                                  discount: int.parse(context
                                      .read<OffersBloc>()
                                      .offerAmountController
                                      .text
                                      .trim()))));
                        },
                        icon: const Icon(Icons.add),
                        label: Text(
                          "Add Offer",
                          style: roboto(color: kBlack),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
