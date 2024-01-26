import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/image_picker/image_picker.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_pref.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/add/add_inventory_response_model/add_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/image/image_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/inventory_repository.dart';

part 'add_inventory_event.dart';
part 'add_inventory_state.dart';
part 'add_inventory_bloc.freezed.dart';

class AddInventoryBloc extends Bloc<AddInventoryEvent, AddInventoryState> {
  final InventoryRepository inventoryApi;
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productQuantityController =
      TextEditingController();
  final GlobalKey<FormState> inventoryKey = GlobalKey<FormState>();

  AddInventoryBloc(this.inventoryApi) : super(AddInventoryState.initial()) {
    on<_AddSneaker>((event, emit) async {
      emit(AddInventoryState.initial().copyWith(isLoading: true));
      final tokens = await SharedPref.getToken();
      final result = await inventoryApi.addInventory(formData: event.formData);
      result.fold((failure) {
        emit(state.copyWith(hasError: true, isLoading: false));
      }, (addInventoryResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            isAdded: true,
            image: null,
            addInventoryResponseModel: addInventoryResponseModel));
      });
    });

    on<_IncrementQuantity>((event, emit) {
      if (productQuantityController.text.isEmpty) {
        productQuantityController.text = '0';
      }
      int quantity = int.parse(productQuantityController.text);
      productQuantityController.text = (quantity + 1).toString();
    });

    on<_DecrementQuantity>((event, emit) {
      if (productQuantityController.text.isEmpty) {
        productQuantityController.text = '0';
      }
      int quantity = int.parse(productQuantityController.text);
      productQuantityController.text = (quantity - 1).toString();
    });

    on<_SelectBrand>((event, emit) {
      emit(state.copyWith(brandId: event.seletedBrand, brand: event.brand));
    });

    on<_PickSize>((event, emit) {
      emit(state.copyWith(size: event.size));
    });

    on<_AddImage>((event, emit) async {
      final image = await PickImage.getImageFromGallery();
      emit(state.copyWith(image: image));
    });
  }
}
