part of 'offers_bloc.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMessage,
      String? category,
      int? categoryId,
      String? message,
      GetOfferResponseModel? getOfferResponseModel}) = _Initial;

  factory OffersState.initial() => const OffersState(
      isLoading: false,
      showMessage: false,
      isAdding: false,
      hasError: false,
      isDone: false);
}
