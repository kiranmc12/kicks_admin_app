import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_response_query/get_response_query.dart';
import 'package:kicks_sneakerapp/domain/repositories/inventory_repository.dart';

part 'get_inventory_event.dart';
part 'get_inventory_state.dart';
part 'get_inventory_bloc.freezed.dart';

class GetInventoryBloc extends Bloc<GetInventoryEvent, GetInventoryState> {
  final InventoryRepository inventoryRepository;
  int page = 1;
  bool isScrollLoading = false;

  GetInventoryBloc(this.inventoryRepository)
      : super(GetInventoryState.initial()) {
    on<_GetInventoryCall>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      page = 1;
      final response = await inventoryRepository.getInventory(
          getResponseQuery: GetResponseQuery(page: page));
      response.fold(
          (failure) => emit(state.copyWith(isLoading: false, hasError: true)),
          (getInventoryResponseModel) {
            emit(state.copyWith(
              isLoading: false,
              hasError: false,
              inventories: getInventoryResponseModel.data));
              
          });
    });

    on<_NextPage>((event, emit) async {
      emit(state.copyWith(loadMore: true));
      isScrollLoading = true;
      page += 1;
      final result = await inventoryRepository.getInventory(
          getResponseQuery: GetResponseQuery(page: page));
      result.fold((failure) => emit(state.copyWith(loadMore: false)),
          (getInventoryResponseModel) {
        if (getInventoryResponseModel.data == null) {
          emit(state.copyWith(loadMore: false));
          return;
        }
        emit(state.copyWith(loadMore: false, inventories: [
          ...state.inventories!,
          ...getInventoryResponseModel.data!
        ]));
      });
      isScrollLoading = false;
    });
  }
}
