import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kicks_sneakerapp/application/bussiness_logic/coupons/coupons_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/offers/offers_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/coupon_activate_query/coupon_activate_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/delete_coupon_model/delete_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/get_coupon_response_model/coupon.dart';
import 'package:kicks_sneakerapp/domain/models/offers/delete_offer_query/delete_offer_query.dart';
import 'package:kicks_sneakerapp/domain/models/offers/get_offer_response_model/offers.dart';

class OfferCouponCard extends StatelessWidget {
  const OfferCouponCard({
    this.coupon,
    this.offer,
    super.key,
  });

  final Coupon? coupon;
  final Offers? offer;

  @override
  Widget build(BuildContext context) {
    late String name;
    late int amount;
    if (coupon != null) {
      name = coupon!.coupon!;
      amount = coupon!.discountRate!;
    } else {
      name = 'Nike';
      amount = offer!.discountRate!;
    }
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.28,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: roboto(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$amount % Discount',
                    style: roboto(color: kGreen),
                  ),
                  (coupon != null && coupon!.valid!) ||
                          (offer != null && offer!.valid!)
                      ? TextButton(
                          onPressed: () {
                            coupon != null
                                ? context.read<CouponsBloc>().add(
                                    CouponsEvent.deleteCoupon(
                                        deleteCouponModel: DeleteCouponModel(
                                            couponId: coupon!.couponId)))
                                : context.read<OffersBloc>().add(
                                    OffersEvent.deleteOffer(
                                        deleteOfferQuery: DeleteOfferQuery(
                                            offerId: offer!.id)));
                          },
                          child: Text(
                            coupon != null ? 'Make Invalid' : "Delete",
                            style: roboto(color: kRed, fontSize: 0.03),
                          ))
                      : TextButton(
                          onPressed: () {
                            coupon != null
                                ? context.read<CouponsBloc>().add(
                                    CouponsEvent.activateCoupon(
                                        couponActivateQuery:
                                            CouponActivateQuery(
                                                id: coupon!.couponId)))
                                : null;
                          },
                          child: const Text(
                            'Make Valid',
                            style: TextStyle(color: kGreen),
                          ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
