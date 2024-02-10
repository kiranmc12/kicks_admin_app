part of 'coupons_bloc.dart';

@freezed
class CouponsEvent with _$CouponsEvent {
  const factory CouponsEvent.addCoupon(
      {required AddCouponModel addCouponModel}) = _AddCoupon;
  const factory CouponsEvent.deleteCoupon(
      {required DeleteCouponModel deleteCouponModel}) = _DeleteCoupon;
  const factory CouponsEvent.getCoupons() = _GetCoupons;
    const factory CouponsEvent.activateCoupon({required CouponActivateQuery couponActivateQuery}) = _ActivateCoupon;

}
