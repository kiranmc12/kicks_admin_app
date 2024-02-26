import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/models/brand/delete_brand_model/delete_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/get_brand_model/get_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/post_brand_model/post_brand_model.dart';
import 'package:kicks_sneakerapp/domain/models/brand/put_brand_model/put_brand_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/brand_repository.dart';

part 'brands_event.dart';
part 'brands_state.dart';
part 'brands_bloc.freezed.dart';

class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  final TextEditingController brandController = TextEditingController();
  final GlobalKey<FormState> brandKey = GlobalKey<FormState>();
  final Map<String, int> brandMap = {};
    final Map<int, String> couponMap = {};


  final BrandRepository brandApi;
  String? curentBrand;

  BrandsBloc(this.brandApi) : super(BrandsState.initial()) {
    on<_GetBrand>((event, emit) async {
      emit(state.copyWith(isLoading: true, isAdding: false, hasError: false));
      final result = await brandApi.getBrands();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              isAdding: false,
              isDone: false,
              isUpdating: false,
              message: null)), (getBrandsResponseModel) {
        brandController.text = "";
        if (getBrandsResponseModel.data != null) {
          for (var brand in getBrandsResponseModel.data!) {
            brandMap[brand.category!] = brand.id!;
          }
          for (var brand in getBrandsResponseModel.data!) {
            couponMap[brand.id!] =brand.category!;
          }
        }

        emit(state.copyWith(
            isLoading: false,
            isAdding: false,
            hasError: false,
            isDone: false,
            message: null,
            isUpdating: false,
            getBrandModel: getBrandsResponseModel));
      });
    });

    on<_AddBrand>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isUpdating: false,
          isAdding: true,
          isDone: false));
      final result =
          await brandApi.addBrand(postBrandModel: event.postBrandModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              isAdding: false,
              isUpdating: false,
              isDone: false,
              message: null)), (getBrandResponseModel) {
        emit(state.copyWith(isDone: true, message: "Brand added Successfully"));
        add(const BrandsEvent.getBrand());
      });
    });

    on<_DeleteBrand>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isAdding: false,
          isDone: false,
          isUpdating: false,
          message: null));
      final result =
          await brandApi.deleteBrand(deleteBrandModel: event.deleteBrandModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              isAdding: false,
              isUpdating: false,
              isDone: false,
              message: null)), (getCatogereyResponseModel) {
        emit(state.copyWith(
            isDone: true, message: 'Brand deleted Successfully'));
        add(const BrandsEvent.getBrand());
      });
    });

    on<_RenameBrand>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isUpdating: false,
          isDone: false,
          message: null));
      final result =
          await brandApi.editBrand(putBrandModel: event.putBrandModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              isAdding: false,
              message: null,
              isDone: false,
              isUpdating: false)),
          (getBrandResponse) => emit(state.copyWith(
              isDone: true, message: "Brand updated sucessfully")));
      add(const BrandsEvent.getBrand());
    });

    on<_TapEdit>((event, emit) {
      brandController.text = event.category;
      curentBrand = event.category;
      emit(state.copyWith(isUpdating: true));
    });
  }
}
