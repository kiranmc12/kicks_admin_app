import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/Failure.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_response_model/get_all_orders_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/order_details_model/order_details_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/update_order_status_model.dart/update_order_status_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';

abstract class OrderRepository {
  Future<Either<Failure, GetAllOrdersResponseModel>> getOrders();
  Future<Either<Failure, OrderDetailsModel>> getOrderDetail(
      {required int id});
  Future<Either<Failure, SucessModel>> updatePaymentStatus(
      {required int id});
  Future<Either<Failure, SucessModel>> updateOrderStatus(
      {required UpdateOrderStatusModel updateOrderStatusModel});
}
