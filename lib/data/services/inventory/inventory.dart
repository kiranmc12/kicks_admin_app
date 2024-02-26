import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/failure.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/add/add_inventory_response_model/add_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/delete/delete_inventory_model/delete_inventory_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/delete/delete_inventory_response_model/delete_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/edit_inventory_details_model/edit_inventory_details_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/edit_inventory_details_query.dart/edit_inventory_details_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/edit_inventory_response_model/edit_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/image/update_image_query/update_image_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/image/update_inventory_image_response_model/update_inventory_image_response.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/update_stock_model/update_stock_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/update_stock_response_model/update_stock_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_response_query/get_response_query.dart';
import 'package:kicks_sneakerapp/domain/repositories/inventory_repository.dart';

class InventoryApi implements InventoryRepository {
  final ApiService apiService = ApiService(
      dio: Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl)),
      baseUrl: ApiEndpoints.baseUrl);

  @override
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData}) async {
    try {
      print(formData);
      final response = await apiService.post(ApiEndpoints.inventory,
          data: formData, headers: {'content-Type': 'multipart/form-data'});
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(AddInventoryResponseModel.fromJson(response.data));
        return Right(AddInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                AddInventoryResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, DeleteInventoryResponseModel>> deleteInventory(
      {required DeleteInventoryModel deleteInventoryModel}) async {
    try {
      final response = await apiService.delete(ApiEndpoints.inventory,
          queryParameters: deleteInventoryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(DeleteInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                DeleteInventoryResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, EditInventoryResponseModel>> editInventoryDetails(
      {required EditInventoryDetailsQuery editInventoryDetailsQuery,
      required EditInventoryDetailsModel editInventoruDetailsModel}) async {
    try {
      final response = await apiService.put(ApiEndpoints.editInventoryDetails,
          data: editInventoruDetailsModel.toJson(),
          queryParameters: editInventoryDetailsQuery.toJson());
      if (response.statusCode == 200) {
        return Right(EditInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                EditInventoryResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, GetInventoryResponseModel>> getInventory(
      {required GetResponseQuery getResponseQuery}) async {
    try {
      final response = await apiService.get(ApiEndpoints.inventory,
          queryParameters: getResponseQuery.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                "Somwthing went wrong"));
      }
    } on DioException catch (dioError) {
      
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response?.data['message']??"somethig went wrong"));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UpdateInventoryImageResponse>> updateImageInventory(
      {required UpdateImageQuery updateInventoryImageQuery,
      required FormData formData}) async {
    try {
      final response = await apiService.put(ApiEndpoints.inventoryImage,
          data: formData, queryParameters: updateInventoryImageQuery.toJson());
      if (response.statusCode == 200) {
        return Right(UpdateInventoryImageResponse.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                UpdateInventoryImageResponse.fromJson(response.data).message!));
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
  Future<Either<Failure, UpdateStockResponseModel>> updateStockInventory(
      {required UpdateStockModel updateStockModel}) async {
    try {
      final response = await apiService.put(ApiEndpoints.inventoryStock,
          data: updateStockModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UpdateStockResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                UpdateStockResponseModel.fromJson(response.data).message!));
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
