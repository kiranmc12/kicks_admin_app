part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryState with _$AddInventoryState {
  const factory AddInventoryState(
      {required bool hasError,
      required bool isLoading,
      required bool isAdded,
      ImageModel? image,
      String? brand,
      String? size,
      int? brandId,
      AddInventoryResponseModel? addInventoryResponseModel}) = _Initial;
  factory AddInventoryState.initial() =>
      AddInventoryState(hasError: false, isLoading: false, isAdded: false);
}
