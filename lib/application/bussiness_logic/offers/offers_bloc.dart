import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_event.dart';
part 'offers_state.dart';
part 'offers_bloc.freezed.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  OffersBloc() : super(_Initial()) {
    on<OffersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
