import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_response_model/get_all_orders_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/order_details_model/order_details_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/update_order_status_model.dart/update_order_status_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/order_repository.dart';

class OrderApi implements OrderRepository {
  final ApiService apiService = ApiService(
      baseUrl: ApiEndpoints.baseUrl,
      dio: Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl)));

  @override
  Future<Either<Failure, OrderDetailsModel>> getOrderDetail(
      {required int id}) async {
    try {
      final response = await apiService
          .get(ApiEndpoints.getOrderDetail.replaceFirst('{id}', id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(OrderDetailsModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: OrderDetailsModel.fromJson(response.data).message!));
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
  Future<Either<Failure, GetAllOrdersResponseModel>> getOrders() async {
       try {
      final response = await apiService
          .get(ApiEndpoints.getOrders);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetAllOrdersResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: GetAllOrdersResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, SucessModel>> updateOrderStatus(
      {required UpdateOrderStatusModel updateOrderStatusModel}) async {
        try {
          final response = await apiService.put(ApiEndpoints.editOrderStatus,
          data: updateOrderStatusModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: SucessModel.fromJson(response.data).message!));
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
  Future<Either<Failure, SucessModel>> updatePaymentStatus(
      {required int id}) async {
        try {
          final response = await apiService.put(ApiEndpoints.editOrderPaymentStatus,
          queryParameters: {"id": id});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: SucessModel.fromJson(response.data).message!));
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
