// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditInventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditInventoryEventCopyWith<$Res> {
  factory $EditInventoryEventCopyWith(
          EditInventoryEvent value, $Res Function(EditInventoryEvent) then) =
      _$EditInventoryEventCopyWithImpl<$Res, EditInventoryEvent>;
}

/// @nodoc
class _$EditInventoryEventCopyWithImpl<$Res, $Val extends EditInventoryEvent>
    implements $EditInventoryEventCopyWith<$Res> {
  _$EditInventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetStockImplCopyWith<$Res> {
  factory _$$SetStockImplCopyWith(
          _$SetStockImpl value, $Res Function(_$SetStockImpl) then) =
      __$$SetStockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stock, String image});
}

/// @nodoc
class __$$SetStockImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$SetStockImpl>
    implements _$$SetStockImplCopyWith<$Res> {
  __$$SetStockImplCopyWithImpl(
      _$SetStockImpl _value, $Res Function(_$SetStockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? image = null,
  }) {
    return _then(_$SetStockImpl(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetStockImpl implements _SetStock {
  const _$SetStockImpl({required this.stock, required this.image});

  @override
  final int stock;
  @override
  final String image;

  @override
  String toString() {
    return 'EditInventoryEvent.setStock(stock: $stock, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStockImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stock, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStockImplCopyWith<_$SetStockImpl> get copyWith =>
      __$$SetStockImplCopyWithImpl<_$SetStockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return setStock(stock, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return setStock?.call(stock, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (setStock != null) {
      return setStock(stock, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return setStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return setStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (setStock != null) {
      return setStock(this);
    }
    return orElse();
  }
}

abstract class _SetStock implements EditInventoryEvent {
  const factory _SetStock(
      {required final int stock, required final String image}) = _$SetStockImpl;

  int get stock;
  String get image;
  @JsonKey(ignore: true)
  _$$SetStockImplCopyWith<_$SetStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddStockImplCopyWith<$Res> {
  factory _$$AddStockImplCopyWith(
          _$AddStockImpl value, $Res Function(_$AddStockImpl) then) =
      __$$AddStockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateStockModel updateStockModel});
}

/// @nodoc
class __$$AddStockImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$AddStockImpl>
    implements _$$AddStockImplCopyWith<$Res> {
  __$$AddStockImplCopyWithImpl(
      _$AddStockImpl _value, $Res Function(_$AddStockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateStockModel = null,
  }) {
    return _then(_$AddStockImpl(
      updateStockModel: null == updateStockModel
          ? _value.updateStockModel
          : updateStockModel // ignore: cast_nullable_to_non_nullable
              as UpdateStockModel,
    ));
  }
}

/// @nodoc

class _$AddStockImpl implements _AddStock {
  const _$AddStockImpl({required this.updateStockModel});

  @override
  final UpdateStockModel updateStockModel;

  @override
  String toString() {
    return 'EditInventoryEvent.addStock(updateStockModel: $updateStockModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStockImpl &&
            (identical(other.updateStockModel, updateStockModel) ||
                other.updateStockModel == updateStockModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateStockModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStockImplCopyWith<_$AddStockImpl> get copyWith =>
      __$$AddStockImplCopyWithImpl<_$AddStockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return addStock(updateStockModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return addStock?.call(updateStockModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (addStock != null) {
      return addStock(updateStockModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return addStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return addStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (addStock != null) {
      return addStock(this);
    }
    return orElse();
  }
}

abstract class _AddStock implements EditInventoryEvent {
  const factory _AddStock({required final UpdateStockModel updateStockModel}) =
      _$AddStockImpl;

  UpdateStockModel get updateStockModel;
  @JsonKey(ignore: true)
  _$$AddStockImplCopyWith<_$AddStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteInventoryImplCopyWith<$Res> {
  factory _$$DeleteInventoryImplCopyWith(_$DeleteInventoryImpl value,
          $Res Function(_$DeleteInventoryImpl) then) =
      __$$DeleteInventoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteInventoryModel deleteInventoryQuery});
}

/// @nodoc
class __$$DeleteInventoryImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$DeleteInventoryImpl>
    implements _$$DeleteInventoryImplCopyWith<$Res> {
  __$$DeleteInventoryImplCopyWithImpl(
      _$DeleteInventoryImpl _value, $Res Function(_$DeleteInventoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteInventoryQuery = null,
  }) {
    return _then(_$DeleteInventoryImpl(
      deleteInventoryQuery: null == deleteInventoryQuery
          ? _value.deleteInventoryQuery
          : deleteInventoryQuery // ignore: cast_nullable_to_non_nullable
              as DeleteInventoryModel,
    ));
  }
}

/// @nodoc

class _$DeleteInventoryImpl implements _DeleteInventory {
  const _$DeleteInventoryImpl({required this.deleteInventoryQuery});

  @override
  final DeleteInventoryModel deleteInventoryQuery;

  @override
  String toString() {
    return 'EditInventoryEvent.deleteInventory(deleteInventoryQuery: $deleteInventoryQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteInventoryImpl &&
            (identical(other.deleteInventoryQuery, deleteInventoryQuery) ||
                other.deleteInventoryQuery == deleteInventoryQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteInventoryQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteInventoryImplCopyWith<_$DeleteInventoryImpl> get copyWith =>
      __$$DeleteInventoryImplCopyWithImpl<_$DeleteInventoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return deleteInventory(deleteInventoryQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return deleteInventory?.call(deleteInventoryQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (deleteInventory != null) {
      return deleteInventory(deleteInventoryQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return deleteInventory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return deleteInventory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (deleteInventory != null) {
      return deleteInventory(this);
    }
    return orElse();
  }
}

abstract class _DeleteInventory implements EditInventoryEvent {
  const factory _DeleteInventory(
          {required final DeleteInventoryModel deleteInventoryQuery}) =
      _$DeleteInventoryImpl;

  DeleteInventoryModel get deleteInventoryQuery;
  @JsonKey(ignore: true)
  _$$DeleteInventoryImplCopyWith<_$DeleteInventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementQuantityImplCopyWith<$Res> {
  factory _$$IncrementQuantityImplCopyWith(_$IncrementQuantityImpl value,
          $Res Function(_$IncrementQuantityImpl) then) =
      __$$IncrementQuantityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementQuantityImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$IncrementQuantityImpl>
    implements _$$IncrementQuantityImplCopyWith<$Res> {
  __$$IncrementQuantityImplCopyWithImpl(_$IncrementQuantityImpl _value,
      $Res Function(_$IncrementQuantityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncrementQuantityImpl implements _IncrementQuantity {
  const _$IncrementQuantityImpl();

  @override
  String toString() {
    return 'EditInventoryEvent.incrementQuantity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementQuantityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return incrementQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return incrementQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (incrementQuantity != null) {
      return incrementQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return incrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return incrementQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (incrementQuantity != null) {
      return incrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _IncrementQuantity implements EditInventoryEvent {
  const factory _IncrementQuantity() = _$IncrementQuantityImpl;
}

/// @nodoc
abstract class _$$DecrementQuantityImplCopyWith<$Res> {
  factory _$$DecrementQuantityImplCopyWith(_$DecrementQuantityImpl value,
          $Res Function(_$DecrementQuantityImpl) then) =
      __$$DecrementQuantityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementQuantityImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$DecrementQuantityImpl>
    implements _$$DecrementQuantityImplCopyWith<$Res> {
  __$$DecrementQuantityImplCopyWithImpl(_$DecrementQuantityImpl _value,
      $Res Function(_$DecrementQuantityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecrementQuantityImpl implements _DecrementQuantity {
  const _$DecrementQuantityImpl();

  @override
  String toString() {
    return 'EditInventoryEvent.decrementQuantity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecrementQuantityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return decrementQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return decrementQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (decrementQuantity != null) {
      return decrementQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return decrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return decrementQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (decrementQuantity != null) {
      return decrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _DecrementQuantity implements EditInventoryEvent {
  const factory _DecrementQuantity() = _$DecrementQuantityImpl;
}

/// @nodoc
abstract class _$$UpdateImageImplCopyWith<$Res> {
  factory _$$UpdateImageImplCopyWith(
          _$UpdateImageImpl value, $Res Function(_$UpdateImageImpl) then) =
      __$$UpdateImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateImageQuery updateInventoryImageQurrey});
}

/// @nodoc
class __$$UpdateImageImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$UpdateImageImpl>
    implements _$$UpdateImageImplCopyWith<$Res> {
  __$$UpdateImageImplCopyWithImpl(
      _$UpdateImageImpl _value, $Res Function(_$UpdateImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateInventoryImageQurrey = null,
  }) {
    return _then(_$UpdateImageImpl(
      updateInventoryImageQurrey: null == updateInventoryImageQurrey
          ? _value.updateInventoryImageQurrey
          : updateInventoryImageQurrey // ignore: cast_nullable_to_non_nullable
              as UpdateImageQuery,
    ));
  }
}

/// @nodoc

class _$UpdateImageImpl implements _UpdateImage {
  const _$UpdateImageImpl({required this.updateInventoryImageQurrey});

  @override
  final UpdateImageQuery updateInventoryImageQurrey;

  @override
  String toString() {
    return 'EditInventoryEvent.updateImage(updateInventoryImageQurrey: $updateInventoryImageQurrey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImageImpl &&
            (identical(other.updateInventoryImageQurrey,
                    updateInventoryImageQurrey) ||
                other.updateInventoryImageQurrey ==
                    updateInventoryImageQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateInventoryImageQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImageImplCopyWith<_$UpdateImageImpl> get copyWith =>
      __$$UpdateImageImplCopyWithImpl<_$UpdateImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return updateImage(updateInventoryImageQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return updateImage?.call(updateInventoryImageQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(updateInventoryImageQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return updateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return updateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateImage implements EditInventoryEvent {
  const factory _UpdateImage(
          {required final UpdateImageQuery updateInventoryImageQurrey}) =
      _$UpdateImageImpl;

  UpdateImageQuery get updateInventoryImageQurrey;
  @JsonKey(ignore: true)
  _$$UpdateImageImplCopyWith<_$UpdateImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editOtherDetailsImplCopyWith<$Res> {
  factory _$$editOtherDetailsImplCopyWith(_$editOtherDetailsImpl value,
          $Res Function(_$editOtherDetailsImpl) then) =
      __$$editOtherDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EditInventoryDetailsModel editInventoryDetailsModel,
      EditInventoryDetailsQuery editInventoryDetailsQuery});
}

/// @nodoc
class __$$editOtherDetailsImplCopyWithImpl<$Res>
    extends _$EditInventoryEventCopyWithImpl<$Res, _$editOtherDetailsImpl>
    implements _$$editOtherDetailsImplCopyWith<$Res> {
  __$$editOtherDetailsImplCopyWithImpl(_$editOtherDetailsImpl _value,
      $Res Function(_$editOtherDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editInventoryDetailsModel = null,
    Object? editInventoryDetailsQuery = null,
  }) {
    return _then(_$editOtherDetailsImpl(
      editInventoryDetailsModel: null == editInventoryDetailsModel
          ? _value.editInventoryDetailsModel
          : editInventoryDetailsModel // ignore: cast_nullable_to_non_nullable
              as EditInventoryDetailsModel,
      editInventoryDetailsQuery: null == editInventoryDetailsQuery
          ? _value.editInventoryDetailsQuery
          : editInventoryDetailsQuery // ignore: cast_nullable_to_non_nullable
              as EditInventoryDetailsQuery,
    ));
  }
}

/// @nodoc

class _$editOtherDetailsImpl implements _editOtherDetails {
  const _$editOtherDetailsImpl(
      {required this.editInventoryDetailsModel,
      required this.editInventoryDetailsQuery});

  @override
  final EditInventoryDetailsModel editInventoryDetailsModel;
  @override
  final EditInventoryDetailsQuery editInventoryDetailsQuery;

  @override
  String toString() {
    return 'EditInventoryEvent.editAllOtherDetails(editInventoryDetailsModel: $editInventoryDetailsModel, editInventoryDetailsQuery: $editInventoryDetailsQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editOtherDetailsImpl &&
            (identical(other.editInventoryDetailsModel,
                    editInventoryDetailsModel) ||
                other.editInventoryDetailsModel == editInventoryDetailsModel) &&
            (identical(other.editInventoryDetailsQuery,
                    editInventoryDetailsQuery) ||
                other.editInventoryDetailsQuery == editInventoryDetailsQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, editInventoryDetailsModel, editInventoryDetailsQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$editOtherDetailsImplCopyWith<_$editOtherDetailsImpl> get copyWith =>
      __$$editOtherDetailsImplCopyWithImpl<_$editOtherDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stock, String image) setStock,
    required TResult Function(UpdateStockModel updateStockModel) addStock,
    required TResult Function(DeleteInventoryModel deleteInventoryQuery)
        deleteInventory,
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function(UpdateImageQuery updateInventoryImageQurrey)
        updateImage,
    required TResult Function(
            EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)
        editAllOtherDetails,
  }) {
    return editAllOtherDetails(
        editInventoryDetailsModel, editInventoryDetailsQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stock, String image)? setStock,
    TResult? Function(UpdateStockModel updateStockModel)? addStock,
    TResult? Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult? Function()? incrementQuantity,
    TResult? Function()? decrementQuantity,
    TResult? Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult? Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
  }) {
    return editAllOtherDetails?.call(
        editInventoryDetailsModel, editInventoryDetailsQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stock, String image)? setStock,
    TResult Function(UpdateStockModel updateStockModel)? addStock,
    TResult Function(DeleteInventoryModel deleteInventoryQuery)?
        deleteInventory,
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function(UpdateImageQuery updateInventoryImageQurrey)? updateImage,
    TResult Function(EditInventoryDetailsModel editInventoryDetailsModel,
            EditInventoryDetailsQuery editInventoryDetailsQuery)?
        editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (editAllOtherDetails != null) {
      return editAllOtherDetails(
          editInventoryDetailsModel, editInventoryDetailsQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStock value) setStock,
    required TResult Function(_AddStock value) addStock,
    required TResult Function(_DeleteInventory value) deleteInventory,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_editOtherDetails value) editAllOtherDetails,
  }) {
    return editAllOtherDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStock value)? setStock,
    TResult? Function(_AddStock value)? addStock,
    TResult? Function(_DeleteInventory value)? deleteInventory,
    TResult? Function(_IncrementQuantity value)? incrementQuantity,
    TResult? Function(_DecrementQuantity value)? decrementQuantity,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_editOtherDetails value)? editAllOtherDetails,
  }) {
    return editAllOtherDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStock value)? setStock,
    TResult Function(_AddStock value)? addStock,
    TResult Function(_DeleteInventory value)? deleteInventory,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_editOtherDetails value)? editAllOtherDetails,
    required TResult orElse(),
  }) {
    if (editAllOtherDetails != null) {
      return editAllOtherDetails(this);
    }
    return orElse();
  }
}

abstract class _editOtherDetails implements EditInventoryEvent {
  const factory _editOtherDetails(
          {required final EditInventoryDetailsModel editInventoryDetailsModel,
          required final EditInventoryDetailsQuery editInventoryDetailsQuery}) =
      _$editOtherDetailsImpl;

  EditInventoryDetailsModel get editInventoryDetailsModel;
  EditInventoryDetailsQuery get editInventoryDetailsQuery;
  @JsonKey(ignore: true)
  _$$editOtherDetailsImplCopyWith<_$editOtherDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditInventoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;
  String? get networkImage => throw _privateConstructorUsedError;
  bool get isImageUpaloding => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditInventoryStateCopyWith<EditInventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditInventoryStateCopyWith<$Res> {
  factory $EditInventoryStateCopyWith(
          EditInventoryState value, $Res Function(EditInventoryState) then) =
      _$EditInventoryStateCopyWithImpl<$Res, EditInventoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? message,
      ImageModel? image,
      String? networkImage,
      bool isImageUpaloding,
      bool hasError,
      int stock,
      bool isUpdated,
      bool isDeleted});
}

/// @nodoc
class _$EditInventoryStateCopyWithImpl<$Res, $Val extends EditInventoryState>
    implements $EditInventoryStateCopyWith<$Res> {
  _$EditInventoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = freezed,
    Object? image = freezed,
    Object? networkImage = freezed,
    Object? isImageUpaloding = null,
    Object? hasError = null,
    Object? stock = null,
    Object? isUpdated = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      networkImage: freezed == networkImage
          ? _value.networkImage
          : networkImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isImageUpaloding: null == isImageUpaloding
          ? _value.isImageUpaloding
          : isImageUpaloding // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EditInventoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? message,
      ImageModel? image,
      String? networkImage,
      bool isImageUpaloding,
      bool hasError,
      int stock,
      bool isUpdated,
      bool isDeleted});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EditInventoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = freezed,
    Object? image = freezed,
    Object? networkImage = freezed,
    Object? isImageUpaloding = null,
    Object? hasError = null,
    Object? stock = null,
    Object? isUpdated = null,
    Object? isDeleted = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      networkImage: freezed == networkImage
          ? _value.networkImage
          : networkImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isImageUpaloding: null == isImageUpaloding
          ? _value.isImageUpaloding
          : isImageUpaloding // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(
      {required this.isLoading,
      this.message,
      this.image,
      this.networkImage,
      required this.isImageUpaloding,
      required this.hasError,
      required this.stock,
      required this.isUpdated,
      required this.isDeleted});

  @override
  final bool isLoading;
  @override
  final String? message;
  @override
  final ImageModel? image;
  @override
  final String? networkImage;
  @override
  final bool isImageUpaloding;
  @override
  final bool hasError;
  @override
  final int stock;
  @override
  final bool isUpdated;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'EditInventoryState(isLoading: $isLoading, message: $message, image: $image, networkImage: $networkImage, isImageUpaloding: $isImageUpaloding, hasError: $hasError, stock: $stock, isUpdated: $isUpdated, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.networkImage, networkImage) ||
                other.networkImage == networkImage) &&
            (identical(other.isImageUpaloding, isImageUpaloding) ||
                other.isImageUpaloding == isImageUpaloding) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, message, image,
      networkImage, isImageUpaloding, hasError, stock, isUpdated, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EditInventoryState {
  factory _Initial(
      {required final bool isLoading,
      final String? message,
      final ImageModel? image,
      final String? networkImage,
      required final bool isImageUpaloding,
      required final bool hasError,
      required final int stock,
      required final bool isUpdated,
      required final bool isDeleted}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get message;
  @override
  ImageModel? get image;
  @override
  String? get networkImage;
  @override
  bool get isImageUpaloding;
  @override
  bool get hasError;
  @override
  int get stock;
  @override
  bool get isUpdated;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
