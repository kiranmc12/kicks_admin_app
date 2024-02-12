import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/offers/add_offer_model/add_offer_model.dart';
import 'package:kicks_sneakerapp/domain/models/offers/delete_offer_query/delete_offer_query.dart';
import 'package:kicks_sneakerapp/domain/models/offers/get_offer_response_model/get_offer_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/offer_repository.dart';

class OfferApi implements OfferRespository {
  final ApiService apiService = ApiService(
      dio: Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl)),
      baseUrl: ApiEndpoints.baseUrl);

  @override
  Future<Either<Failure, SucessModel>> deleteOffer(
      {required DeleteOfferQuery deleteOfferQuery}) async {
    try {
      final response = await apiService.delete(ApiEndpoints.offer,
          queryParameters: deleteOfferQuery.toJson());
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
  Future<Either<Failure, GetOfferResponseModel>> getOffers() async {
    try {
      final response = await apiService.get(
        ApiEndpoints.offer,
      );
      if (response.statusCode == 200) {
        return Right(GetOfferResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: GetOfferResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, SucessModel>> addOffers(
      {required AddOfferModel addOfferModel}) async {
    try {
      final response = await apiService.post(ApiEndpoints.offer,
          data: addOfferModel.toJson());
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
}
