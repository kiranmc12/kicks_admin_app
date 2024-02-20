part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
   factory OrderState(
      {required bool hasError,
      required bool isDone,
      required bool isLoading,
      String? message,
      OrderDetails? orderDetail,
      List<Order>? pending,
      List<Order>? shipped,
      List<Order>? delivered,
      List<Order>? returned,
      List<Order>? canceled}) = _Initial;

  factory OrderState.initial() =>
      OrderState(hasError: false, isDone: false, isLoading: false);
}
