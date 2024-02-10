import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/add_coupon_model/add_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/coupon_activate_query/coupon_activate_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/delete_coupon_model/delete_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/get_coupon_response_model/get_coupon_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';

abstract class CouponRepository {
  Future<Either<Failure, SucessModel>> addCoupon(
      {required AddCouponModel addCouponModel});
  Future<Either<Failure, GetCouponResponseModel>> getCoupon();

  Future<Either<Failure, SucessModel>> deleteCoupon(
      {required DeleteCouponModel deleteCouponModel});

  Future<Either<Failure, SucessModel>> activateCoupon(
      {required CouponActivateQuery couponActivateQurrey});
}
