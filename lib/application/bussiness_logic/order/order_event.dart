part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrders() = _GetOrders;
  const factory OrderEvent.getOrderById({required int id}) = _GetOrderById;
  const factory OrderEvent.updateOrderStatus(
      {required UpdateOrderStatusModel updateOrderStatusModel}) = _UpdateOrderStatus;
  const factory OrderEvent.updatePaymentStatus({required int id}) =
      _UpdatePaymentStatus;
}
