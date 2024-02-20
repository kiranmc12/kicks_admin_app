part of 'edit_inventory_bloc.dart';

@freezed
class EditInventoryEvent with _$EditInventoryEvent {
  const factory EditInventoryEvent.setStock(
      {required int stock, required String image}) = _SetStock;
  const factory EditInventoryEvent.addStock(
      {required UpdateStockModel updateStockModel}) = _AddStock;
  const factory EditInventoryEvent.deleteInventory(
      {required DeleteInventoryModel deleteInventoryQuery}) = _DeleteInventory;
  const factory EditInventoryEvent.incrementQuantity() = _IncrementQuantity;
  const factory EditInventoryEvent.decrementQuantity() = _DecrementQuantity;
  const factory EditInventoryEvent.updateImage(
      {required UpdateImageQuery updateInventoryImageQurrey}) = _UpdateImage;
        const factory EditInventoryEvent.editAllOtherDetails(
      {required EditInventoryDetailsModel editInventoryDetailsModel,required EditInventoryDetailsQuery editInventoryDetailsQuery}) = _editOtherDetails;

}
