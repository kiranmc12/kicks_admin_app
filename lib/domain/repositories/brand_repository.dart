import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/failure.dart';
import 'package:kicks_sneakerapp/domain/models/brand/brand_response_model/brand_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/delete_brand_model/delete_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/get_brand_model/get_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/post_brand_model/post_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/put_brand_model/put_brand_model.dart';

abstract class BrandRepository {
  Future<Either<Failure, BrandResponseModel>> addBrand(
      {required PostBrandModel postBrandModel});

  Future<Either<Failure, GetBrandModel>> getBrands();

  Future<Either<Failure, BrandResponseModel>> editBrand(
      {required PutBrandModel putBrandModel});

  Future<Either<Failure, BrandResponseModel>> deleteBrand(
      {required DeleteBrandModel deleteBrandModel});
}
