import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/failure.dart';
import 'package:kicks_sneakerapp/domain/models/brand/brand_response_model/brand_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/delete_brand_model/delete_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/get_brand_model/get_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/post_brand_model/post_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/put_brand_model/put_brand_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/brand_repository.dart';

class BrandApi implements BrandRepository {
  final ApiService apiService = ApiService(
      dio: Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl)),
      baseUrl: ApiEndpoints.baseUrl);

  @override
  Future<Either<Failure, BrandResponseModel>> addBrand(
      {required PostBrandModel postBrandModel}) async {
    try {
      final response = await apiService.post(ApiEndpoints.catogery,
          data: postBrandModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BrandResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: BrandResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, BrandResponseModel>> deleteBrand(
      {required DeleteBrandModel deleteBrandModel}) async {
    try {
      final response = await apiService.delete(ApiEndpoints.catogery,
          queryParameters: deleteBrandModel.toJson());
      if (response.statusCode == 200) {
        return Right(BrandResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: BrandResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, BrandResponseModel>> editBrand(
      {required PutBrandModel putBrandModel}) async {
    try {
      final response = await apiService.put(ApiEndpoints.catogery,
          data: putBrandModel.toJson());
      if (response.statusCode == 200) {
        return Right(BrandResponseModel.fromJson(response.data));
      } else {
        return left(Failure(
            message: BrandResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
     
      return Left(Failure(message: dioError.response?.data['message']??"Something went wrong"));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetBrandModel>> getBrands() async {
    try {
      final response = await apiService.get(ApiEndpoints.catogery);
      if (response.statusCode == 200) {
        return Right(GetBrandModel.fromJson(response.data));
      } else {
        return left(Failure(
            message: BrandResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response?.data['message']?? "Something went wrong"));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }
}
