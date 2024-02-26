import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/error/failure.dart';
import 'package:kicks_sneakerapp/domain/models/offers/add_offer_model/add_offer_model.dart';
import 'package:kicks_sneakerapp/domain/models/offers/delete_offer_query/delete_offer_query.dart';
import 'package:kicks_sneakerapp/domain/models/offers/get_offer_response_model/get_offer_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess/sucess_model/sucess_model.dart';

abstract class OfferRespository {
  Future<Either<Failure, SucessModel>> addOffers(
      {required AddOfferModel addOfferModel});
  Future<Either<Failure, GetOfferResponseModel>> getOffers();
  Future<Either<Failure, SucessModel>> deleteOffer(
      {required DeleteOfferQuery deleteOfferQuery});
}
