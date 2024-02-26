import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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

abstract class InventoryRepository {
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData});

  Future<Either<Failure, GetInventoryResponseModel>> getInventory(
      {required GetResponseQuery getResponseQuery});

  Future<Either<Failure, UpdateStockResponseModel>> updateStockInventory(
      {required UpdateStockModel updateStockModel});

  Future<Either<Failure, DeleteInventoryResponseModel>> deleteInventory(
      {required DeleteInventoryModel deleteInventoryModel});

  Future<Either<Failure, UpdateInventoryImageResponse>> updateImageInventory(
      {required UpdateImageQuery updateInventoryImageQuery,
      required FormData formData});

  Future<Either<Failure, EditInventoryResponseModel>> editInventoryDetails(
      {required EditInventoryDetailsQuery editInventoryDetailsQuery,
      required EditInventoryDetailsModel editInventoruDetailsModel});
}
