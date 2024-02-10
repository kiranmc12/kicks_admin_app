part of 'coupons_bloc.dart';

@freezed
class CouponsState with _$CouponsState {
  const factory CouponsState(
      {required bool isLoding,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMessage,
      String? message,
      GetCouponResponseModel? getCouponResponseModel}) = _Initial;
  factory CouponsState.initial() => CouponsState(
      isLoding: true,
      hasError: false,
      isAdding: false,
      isDone: false,
      showMessage: false);
}
