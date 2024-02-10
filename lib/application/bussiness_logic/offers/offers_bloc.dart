import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/models/offers/add_offer_model/add_offer_model.dart';
import 'package:kicks_sneakerapp/domain/models/offers/delete_offer_query/delete_offer_query.dart';
import 'package:kicks_sneakerapp/domain/models/offers/get_offer_response_model/get_offer_response_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/offer_repository.dart';

part 'offers_event.dart';
part 'offers_state.dart';
part 'offers_bloc.freezed.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final TextEditingController offerAmountController = TextEditingController();

  final OfferRespository offerApi;
  OffersBloc(this.offerApi) : super(OffersState.initial()) {
    on<_GetOffers>((event, emit) async {
      final result = await offerApi.getOffers();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: "Something went wrong,please refresh")),
          (getOffersResponse) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              getOfferResponseModel: getOffersResponse)));
    });

    on<_AddOffer>((event, emit) async {
      final result =
          await offerApi.addOffers(addOfferModel: event.addOfferModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: "Coudnt add offer,please try again")),
          (addOfferResponse) => emit(state.copyWith(
              isDone: true,
              hasError: false,
              message: "Offer added sucessfully")));
      add(const OffersEvent.getOffers());
    });

    on<_DeleteOffer>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));

      final result =
          await offerApi.deleteOffer(deleteOfferQuery: event.deleteOfferQuery);

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'can\'t remove offer, please try again')),
          (getOfferResponseModel) {
        emit(state.copyWith(
            isDone: true,
            hasError: false,
            message: 'Offer removed successfully'));

        add(const OffersEvent.getOffers());
      });
      on<_SelectCatogory>((event, emit) {
        emit(state.copyWith(
            categoryId: event.selectedCatogory, category: event.catogory));
      });
    });
  }
}
