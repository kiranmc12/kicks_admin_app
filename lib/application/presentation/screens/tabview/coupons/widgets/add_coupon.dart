import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/coupons/coupons_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/add_coupon_model/add_coupon_model.dart';

class AddCouponWidget extends StatelessWidget {
  const AddCouponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sWidth * 0.60,
      width: sWidth,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Coupon code",
                style: roboto(),
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                      controller:
                          context.read<CouponsBloc>().couponNameController,
                      color: kWhite,
                      width: sWidth * 0.59,
                      hintText: "COUPON CODE"),
                  kHeight10
                ],
              ),
              kHeight10,
              Text(
                "Discount Percentage",
                style: roboto(),
              ),
              CustomTextField(
                controller: context.read<CouponsBloc>().couponAmountController,
                hintText: "Percentage",
                color: kWhite,
                width: sWidth * 0.50,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton.icon(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<CouponsBloc>().add(CouponsEvent.addCoupon(
                          addCouponModel: AddCouponModel(
                              coupon: context
                                  .read<CouponsBloc>()
                                  .couponNameController
                                  .text
                                  .trim(),
                              discountRate: int.parse(context
                                  .read<CouponsBloc>()
                                  .couponAmountController
                                  .text
                                  .trim()))));
                    },
                    icon: const Icon(Icons.add),
                    label: Text(
                      "Add Coupon",
                      style: roboto(color: kBlack),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
