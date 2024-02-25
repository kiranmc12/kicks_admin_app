import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/coupons/coupons_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/coupons/widgets/coupon_tile_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';

class AvailableCouponTile extends StatelessWidget {
  const AvailableCouponTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CouponsBloc>().add(const CouponsEvent.getCoupons());
    });
    return Expanded(
      child: BlocConsumer<CouponsBloc, CouponsState>(
        listener: (context, state) {
          if (state.message != null) {
            if (state.hasError || state.isDone) {
              showSnack(
                  context: context,
                  message: state.message!,
                  color: state.hasError ? kRed : kGreen);
            }
          }
        },
        buildWhen: (previous, current) =>
            previous.getCouponResponseModel != current.getCouponResponseModel,
        builder: (context, state) {
          if (state.getCouponResponseModel == null) {
            return const Center(
              child: Text("Nothing to show"),
            );
          }
          final couponList = state.getCouponResponseModel!.data;
          return ListView.builder(
              itemCount: couponList!.length,
              itemBuilder: (context, index) => OfferCouponCard(
                    coupon: couponList[index],
                  ));
        },
      ),
    );
  }
}
