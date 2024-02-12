import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/add_coupon_model/add_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/coupon_activate_query/coupon_activate_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/delete_coupon_model/delete_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/get_coupon_response_model/get_coupon_response_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/coupon_repository.dart';

part 'coupons_event.dart';
part 'coupons_state.dart';
part 'coupons_bloc.freezed.dart';

class CouponsBloc extends Bloc<CouponsEvent, CouponsState> {
  final TextEditingController couponNameController = TextEditingController();
  final TextEditingController couponAmountController = TextEditingController();
  final GlobalKey<FormState> couponKey = GlobalKey<FormState>();
  final CouponRepository couponApi;

  CouponsBloc(this.couponApi) : super(CouponsState.initial()) {
    on<_GetCoupons>((event, emit) async {
      final result = await couponApi.getCoupon();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoding: false,
              hasError: true,
              message: "Check connection and reload")),
          (getCouponResponseModel) => emit(state.copyWith(
              isLoding: false,
              hasError: false,
              getCouponResponseModel: getCouponResponseModel)));
    });

    on<_AddCoupon>((event, emit) async {
      final result =
          await couponApi.addCoupon(addCouponModel: event.addCouponModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoding: false,
              hasError: true,
              message: "Something went wrong please try again")),
          (addCouponResponse) => emit(state.copyWith(
              isDone: true, message: "Coupon added sucessfully")));
      couponAmountController.text = '';
      couponNameController.text = '';
      add(const CouponsEvent.getCoupons());
    });

    on<_DeleteCoupon>((event, emit) async {
      emit(state.copyWith(isLoding: true, hasError: false, isDone: false));
      final result = await couponApi.deleteCoupon(
          deleteCouponModel: event.deleteCouponModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoding: false,
              hasError: true,
              message: "cant delete coupon,something went wrong")),
          (couponResponseModel) {
        emit(state.copyWith(
            isDone: true, message: "Coupon deactivated sucessfully"));
        add(const CouponsEvent.getCoupons());
      });
    });
    on<_ActivateCoupon>((event, emit) async {
      final result = await couponApi.activateCoupon(
          couponActivateQurrey: event.couponActivateQuery);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoding: false,
              hasError: true,
              message: 'something went wrong')), (couponResponseModel) {
        emit(state.copyWith(isDone: true, message: 'Activated susccssfully'));
        add(const CouponsEvent.getCoupons());
      });
    });
  }
}
