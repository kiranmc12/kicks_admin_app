import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/offers/offers_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/coupons/widgets/coupon_tile_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';

class OfferListView extends StatelessWidget {
  const OfferListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OffersBloc>().add(const OffersEvent.getOffers());
    });
    return Expanded(
      child: BlocConsumer<OffersBloc, OffersState>(
        listener: (context, state) {
          if (state.hasError || state.isDone) {
            showSnack(
                context: context,
                message: state.message!,
                color: state.hasError ? kRed : kGreen);
          }
        },
        buildWhen: (previous, current) =>
            previous.getOfferResponseModel != current.getOfferResponseModel,
        builder: (context, state) {
          if (state.getOfferResponseModel == null || state.getOfferResponseModel!.data==null) {
            return const Center(
              child: Text('Nothing to show'),
            );
          }
          final offerList = state.getOfferResponseModel!.data!;
          print(offerList);

          return ListView.builder(
            itemBuilder: (context, index) {
              return OfferCouponCard(
                offer: offerList[index],
              );
            },
            itemCount: offerList.length,
          );
        },
      ),
    );
  }
}
