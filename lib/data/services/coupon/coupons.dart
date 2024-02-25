import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/add_coupon_model/add_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/coupon_activate_query/coupon_activate_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/delete_coupon_model/delete_coupon_model.dart';
import 'package:kicks_sneakerapp/domain/models/coupons/get_coupon_response_model/get_coupon_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/coupon_repository.dart';

class CouponApi implements CouponRepository {
  final ApiService apiService = ApiService(
      dio: Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl)),
      baseUrl: ApiEndpoints.baseUrl);

  @override
  Future<Either<Failure, SucessModel>> activateCoupon(
      {required CouponActivateQuery couponActivateQurrey}) async {
    try {
      final response = await apiService.put(ApiEndpoints.coupon,
          queryParameters: couponActivateQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SucessModel>> addCoupon(
      {required AddCouponModel addCouponModel}) async {
    try {
      final response = await apiService.post(ApiEndpoints.coupon,
          data: addCouponModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SucessModel>> deleteCoupon(
      {required DeleteCouponModel deleteCouponModel}) async {
    try {
      final response = await apiService.delete(ApiEndpoints.coupon,
          queryParameters: deleteCouponModel.toJson());
      if (response.statusCode == 200) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetCouponResponseModel>> getCoupon() async {
    try {
      final response = await apiService.get(ApiEndpoints.coupon);
      if (response.statusCode == 200) {
        return Right(GetCouponResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: GetCouponResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {

      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response?.data['message']??"Something went wrong"));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }
}
