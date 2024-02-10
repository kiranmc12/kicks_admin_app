part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryEvent with _$AddInventoryEvent {
  const factory AddInventoryEvent.addImage() = _AddImage;
  const factory AddInventoryEvent.pickSize({required String size}) = _PickSize;
  const factory AddInventoryEvent.selectBrand(
      {required int seletedBrand, required String brand}) = _SelectBrand;
  const factory AddInventoryEvent.incrementQuantity() = _IncrementQuantity;
  const factory AddInventoryEvent.decrementQuantity() = _DecrementQuantity;
  const factory AddInventoryEvent.addSneaker({required FormData formData}) =
      _AddSneaker;
}
