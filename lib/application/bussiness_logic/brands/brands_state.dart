part of 'brands_bloc.dart';

@freezed
class BrandsState with _$BrandsState {
  const factory BrandsState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMwssage,
      required bool isUpdating,
      String? message,
      GetBrandModel? getBrandModel}) = _Initial;

  factory BrandsState.initial() => BrandsState(
      isLoading: true,
      hasError: false,
      isAdding: false,
      isDone: false,
      showMwssage: false,
      isUpdating: false);
}
