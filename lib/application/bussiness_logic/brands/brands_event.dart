part of 'brands_bloc.dart';

@freezed
class BrandsEvent with _$BrandsEvent {
  const factory BrandsEvent.getBrand() = _GetBrand;
  const factory BrandsEvent.addBrand({required PostBrandModel postBrandModel}) =
      _AddBrand;
  const factory BrandsEvent.deleteBrand(
      {required DeleteBrandModel deleteBrandModel}) = _DeleteBrand;
  const factory BrandsEvent.renameBrand(
      {required PutBrandModel putBrandModel}) = _RenameBrand;
  const factory BrandsEvent.tapEdit({required String category}) = _TapEdit;
}
