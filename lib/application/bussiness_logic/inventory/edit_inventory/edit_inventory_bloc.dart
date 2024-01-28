import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/image_picker/image_picker.dart';
import 'package:kicks_sneakerapp/data/services/inventory/inventory.dart';
import 'package:kicks_sneakerapp/domain/core/error/errors.dart';
import 'package:kicks_sneakerapp/domain/models/brand/delete_brand_model/delete_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/delete/delete_inventory_model/delete_inventory_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/image/update_image_query/update_image_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/edit/update_stock_model/update_stock_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/image/image_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/inventory_repository.dart';

part 'edit_inventory_event.dart';
part 'edit_inventory_state.dart';
part 'edit_inventory_bloc.freezed.dart';

class EditInventoryBloc extends Bloc<EditInventoryEvent, EditInventoryState> {
  final InventoryRepository inventoryRepositoryApi;
  final TextEditingController stockUpdateController =
      TextEditingController(text: '0');
  final GlobalKey<FormState> stockformKey = GlobalKey<FormState>();
  EditInventoryBloc(this.inventoryRepositoryApi)
      : super(EditInventoryState.initial()) {
    on<_SetStock>((event, emit) {
      emit(state.copyWith(
          stock: event.stock,
          isUpdated: false,
          hasError: false,
          isDeleted: false,
          networkImage: event.image));
    });

    on<_AddStock>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final result = await inventoryRepositoryApi.updateStockInventory(
          updateStockModel: event.updateStockModel);
      result.fold(
        (failure) => emit(
          state.copyWith(
              isLoading: false,
              isUpdated: false,
              hasError: true,
              isDeleted: false,
              message: 'something went wrong, please try again'),
        ),
        (updateStockResponse) {
          stockUpdateController.text = '0';
          emit(
            state.copyWith(
                isLoading: false,
                isUpdated: false,
                hasError: false,
                isDeleted: false,
                stock: updateStockResponse.data!.stock!,
                message: 'stock updated successfully'),
          );
        },
      );
    });

    
    on<_DeleteInventory>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final result = await inventoryRepositoryApi.deleteInventory(
          deleteInventoryModel: event.deleteInventoryQuery);
      result.fold((failuure) {
        emit(state.copyWith(
            hasError: true,
            isLoading: false,
            isDeleted: false,
            message: "Something went wrong"));
      }, (deleteInventoryResponse) {
        stockUpdateController.text = '0';
        emit(state.copyWith(
            isLoading: false,
            isDeleted: true,
            hasError: false,
            message: deleteInventoryResponse.message));
      });
    });

    on<_UpdateImage>((event, emit) async {
      final image = await PickImage.getImageFromGallery();
      if (image == null) return;
      emit(state.copyWith(isImageUpaloding: true));
      Map<String, dynamic> imageMap = {"image": image.multipartFile};

      final result = await inventoryRepositoryApi.updateImageInventory(
        updateInventoryImageQuery: event.updateInventoryImageQurrey,
        formData: FormData.fromMap(imageMap),
      );
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isImageUpaloding: false,
              message: "Can't update image")),
          (updateImageResponse) => emit(state.copyWith(
              hasError: false,
              isImageUpaloding: false,
              message: "Image Updated Successfully",
              isUpdated: true,
              image: image)));
    });
    on<_IncrementQuantity>((event, emit) {
      int quantity = int.parse(stockUpdateController.text.trim());
      stockUpdateController.text = (quantity + 1).toString();
    });

    on<_DecrementQuantity>((event, emit) {
      int quantity = int.parse(stockUpdateController.text.trim());
      if (quantity > 0) {
        stockUpdateController.text = (quantity - 1).toString();
      }
    });
  }
}
