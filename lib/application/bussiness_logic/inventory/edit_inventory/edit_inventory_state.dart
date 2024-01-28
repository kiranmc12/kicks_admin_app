part of 'edit_inventory_bloc.dart';

@freezed
class EditInventoryState with _$EditInventoryState {
  factory EditInventoryState(
      {required bool isLoading,
      String? message,
      ImageModel? image,
      String? networkImage,
      required bool isImageUpaloding,
      required bool hasError,
      required int stock,
      required bool isUpdated,
      required bool isDeleted}) = _Initial;

  factory EditInventoryState.initial() => EditInventoryState(
      isLoading: false,
      isImageUpaloding: false,
      hasError: false,
      stock: 0,
      isUpdated: false,
      isDeleted: false);
}
