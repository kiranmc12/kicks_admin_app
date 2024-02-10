part of 'offers_bloc.dart';

@freezed
class OffersEvent with _$OffersEvent {
  const factory OffersEvent.getOffers() = _GetOffers;
  const factory OffersEvent.addOffer({required AddOfferModel addOfferModel}) =
      _AddOffer;
  const factory OffersEvent.deleteOffer(
      {required DeleteOfferQuery deleteOfferQuery}) = _DeleteOffer;
  const factory OffersEvent.selectCatogory(
      {required int selectedCatogory,
      required String catogory}) = _SelectCatogory;
}
