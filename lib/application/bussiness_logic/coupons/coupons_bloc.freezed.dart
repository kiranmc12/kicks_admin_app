// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupons_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CouponsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCouponModel addCouponModel) addCoupon,
    required TResult Function(DeleteCouponModel deleteCouponModel) deleteCoupon,
    required TResult Function() getCoupons,
    required TResult Function(CouponActivateQuery couponActivateQuery)
        activateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCouponModel addCouponModel)? addCoupon,
    TResult? Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult? Function()? getCoupons,
    TResult? Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCouponModel addCouponModel)? addCoupon,
    TResult Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult Function()? getCoupons,
    TResult Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_ActivateCoupon value) activateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_ActivateCoupon value)? activateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_ActivateCoupon value)? activateCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsEventCopyWith<$Res> {
  factory $CouponsEventCopyWith(
          CouponsEvent value, $Res Function(CouponsEvent) then) =
      _$CouponsEventCopyWithImpl<$Res, CouponsEvent>;
}

/// @nodoc
class _$CouponsEventCopyWithImpl<$Res, $Val extends CouponsEvent>
    implements $CouponsEventCopyWith<$Res> {
  _$CouponsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCouponImplCopyWith<$Res> {
  factory _$$AddCouponImplCopyWith(
          _$AddCouponImpl value, $Res Function(_$AddCouponImpl) then) =
      __$$AddCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddCouponModel addCouponModel});
}

/// @nodoc
class __$$AddCouponImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$AddCouponImpl>
    implements _$$AddCouponImplCopyWith<$Res> {
  __$$AddCouponImplCopyWithImpl(
      _$AddCouponImpl _value, $Res Function(_$AddCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCouponModel = null,
  }) {
    return _then(_$AddCouponImpl(
      addCouponModel: null == addCouponModel
          ? _value.addCouponModel
          : addCouponModel // ignore: cast_nullable_to_non_nullable
              as AddCouponModel,
    ));
  }
}

/// @nodoc

class _$AddCouponImpl implements _AddCoupon {
  const _$AddCouponImpl({required this.addCouponModel});

  @override
  final AddCouponModel addCouponModel;

  @override
  String toString() {
    return 'CouponsEvent.addCoupon(addCouponModel: $addCouponModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCouponImpl &&
            (identical(other.addCouponModel, addCouponModel) ||
                other.addCouponModel == addCouponModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addCouponModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCouponImplCopyWith<_$AddCouponImpl> get copyWith =>
      __$$AddCouponImplCopyWithImpl<_$AddCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCouponModel addCouponModel) addCoupon,
    required TResult Function(DeleteCouponModel deleteCouponModel) deleteCoupon,
    required TResult Function() getCoupons,
    required TResult Function(CouponActivateQuery couponActivateQuery)
        activateCoupon,
  }) {
    return addCoupon(addCouponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCouponModel addCouponModel)? addCoupon,
    TResult? Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult? Function()? getCoupons,
    TResult? Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
  }) {
    return addCoupon?.call(addCouponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCouponModel addCouponModel)? addCoupon,
    TResult Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult Function()? getCoupons,
    TResult Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
    required TResult orElse(),
  }) {
    if (addCoupon != null) {
      return addCoupon(addCouponModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_ActivateCoupon value) activateCoupon,
  }) {
    return addCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_ActivateCoupon value)? activateCoupon,
  }) {
    return addCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_ActivateCoupon value)? activateCoupon,
    required TResult orElse(),
  }) {
    if (addCoupon != null) {
      return addCoupon(this);
    }
    return orElse();
  }
}

abstract class _AddCoupon implements CouponsEvent {
  const factory _AddCoupon({required final AddCouponModel addCouponModel}) =
      _$AddCouponImpl;

  AddCouponModel get addCouponModel;
  @JsonKey(ignore: true)
  _$$AddCouponImplCopyWith<_$AddCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCouponImplCopyWith<$Res> {
  factory _$$DeleteCouponImplCopyWith(
          _$DeleteCouponImpl value, $Res Function(_$DeleteCouponImpl) then) =
      __$$DeleteCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteCouponModel deleteCouponModel});
}

/// @nodoc
class __$$DeleteCouponImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$DeleteCouponImpl>
    implements _$$DeleteCouponImplCopyWith<$Res> {
  __$$DeleteCouponImplCopyWithImpl(
      _$DeleteCouponImpl _value, $Res Function(_$DeleteCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteCouponModel = null,
  }) {
    return _then(_$DeleteCouponImpl(
      deleteCouponModel: null == deleteCouponModel
          ? _value.deleteCouponModel
          : deleteCouponModel // ignore: cast_nullable_to_non_nullable
              as DeleteCouponModel,
    ));
  }
}

/// @nodoc

class _$DeleteCouponImpl implements _DeleteCoupon {
  const _$DeleteCouponImpl({required this.deleteCouponModel});

  @override
  final DeleteCouponModel deleteCouponModel;

  @override
  String toString() {
    return 'CouponsEvent.deleteCoupon(deleteCouponModel: $deleteCouponModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCouponImpl &&
            (identical(other.deleteCouponModel, deleteCouponModel) ||
                other.deleteCouponModel == deleteCouponModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteCouponModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCouponImplCopyWith<_$DeleteCouponImpl> get copyWith =>
      __$$DeleteCouponImplCopyWithImpl<_$DeleteCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCouponModel addCouponModel) addCoupon,
    required TResult Function(DeleteCouponModel deleteCouponModel) deleteCoupon,
    required TResult Function() getCoupons,
    required TResult Function(CouponActivateQuery couponActivateQuery)
        activateCoupon,
  }) {
    return deleteCoupon(deleteCouponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCouponModel addCouponModel)? addCoupon,
    TResult? Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult? Function()? getCoupons,
    TResult? Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
  }) {
    return deleteCoupon?.call(deleteCouponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCouponModel addCouponModel)? addCoupon,
    TResult Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult Function()? getCoupons,
    TResult Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
    required TResult orElse(),
  }) {
    if (deleteCoupon != null) {
      return deleteCoupon(deleteCouponModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_ActivateCoupon value) activateCoupon,
  }) {
    return deleteCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_ActivateCoupon value)? activateCoupon,
  }) {
    return deleteCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_ActivateCoupon value)? activateCoupon,
    required TResult orElse(),
  }) {
    if (deleteCoupon != null) {
      return deleteCoupon(this);
    }
    return orElse();
  }
}

abstract class _DeleteCoupon implements CouponsEvent {
  const factory _DeleteCoupon(
          {required final DeleteCouponModel deleteCouponModel}) =
      _$DeleteCouponImpl;

  DeleteCouponModel get deleteCouponModel;
  @JsonKey(ignore: true)
  _$$DeleteCouponImplCopyWith<_$DeleteCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCouponsImplCopyWith<$Res> {
  factory _$$GetCouponsImplCopyWith(
          _$GetCouponsImpl value, $Res Function(_$GetCouponsImpl) then) =
      __$$GetCouponsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCouponsImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$GetCouponsImpl>
    implements _$$GetCouponsImplCopyWith<$Res> {
  __$$GetCouponsImplCopyWithImpl(
      _$GetCouponsImpl _value, $Res Function(_$GetCouponsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCouponsImpl implements _GetCoupons {
  const _$GetCouponsImpl();

  @override
  String toString() {
    return 'CouponsEvent.getCoupons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCouponsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCouponModel addCouponModel) addCoupon,
    required TResult Function(DeleteCouponModel deleteCouponModel) deleteCoupon,
    required TResult Function() getCoupons,
    required TResult Function(CouponActivateQuery couponActivateQuery)
        activateCoupon,
  }) {
    return getCoupons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCouponModel addCouponModel)? addCoupon,
    TResult? Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult? Function()? getCoupons,
    TResult? Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
  }) {
    return getCoupons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCouponModel addCouponModel)? addCoupon,
    TResult Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult Function()? getCoupons,
    TResult Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_ActivateCoupon value) activateCoupon,
  }) {
    return getCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_ActivateCoupon value)? activateCoupon,
  }) {
    return getCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_ActivateCoupon value)? activateCoupon,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons(this);
    }
    return orElse();
  }
}

abstract class _GetCoupons implements CouponsEvent {
  const factory _GetCoupons() = _$GetCouponsImpl;
}

/// @nodoc
abstract class _$$ActivateCouponImplCopyWith<$Res> {
  factory _$$ActivateCouponImplCopyWith(_$ActivateCouponImpl value,
          $Res Function(_$ActivateCouponImpl) then) =
      __$$ActivateCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CouponActivateQuery couponActivateQuery});
}

/// @nodoc
class __$$ActivateCouponImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$ActivateCouponImpl>
    implements _$$ActivateCouponImplCopyWith<$Res> {
  __$$ActivateCouponImplCopyWithImpl(
      _$ActivateCouponImpl _value, $Res Function(_$ActivateCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponActivateQuery = null,
  }) {
    return _then(_$ActivateCouponImpl(
      couponActivateQuery: null == couponActivateQuery
          ? _value.couponActivateQuery
          : couponActivateQuery // ignore: cast_nullable_to_non_nullable
              as CouponActivateQuery,
    ));
  }
}

/// @nodoc

class _$ActivateCouponImpl implements _ActivateCoupon {
  const _$ActivateCouponImpl({required this.couponActivateQuery});

  @override
  final CouponActivateQuery couponActivateQuery;

  @override
  String toString() {
    return 'CouponsEvent.activateCoupon(couponActivateQuery: $couponActivateQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivateCouponImpl &&
            (identical(other.couponActivateQuery, couponActivateQuery) ||
                other.couponActivateQuery == couponActivateQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponActivateQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivateCouponImplCopyWith<_$ActivateCouponImpl> get copyWith =>
      __$$ActivateCouponImplCopyWithImpl<_$ActivateCouponImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCouponModel addCouponModel) addCoupon,
    required TResult Function(DeleteCouponModel deleteCouponModel) deleteCoupon,
    required TResult Function() getCoupons,
    required TResult Function(CouponActivateQuery couponActivateQuery)
        activateCoupon,
  }) {
    return activateCoupon(couponActivateQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCouponModel addCouponModel)? addCoupon,
    TResult? Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult? Function()? getCoupons,
    TResult? Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
  }) {
    return activateCoupon?.call(couponActivateQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCouponModel addCouponModel)? addCoupon,
    TResult Function(DeleteCouponModel deleteCouponModel)? deleteCoupon,
    TResult Function()? getCoupons,
    TResult Function(CouponActivateQuery couponActivateQuery)? activateCoupon,
    required TResult orElse(),
  }) {
    if (activateCoupon != null) {
      return activateCoupon(couponActivateQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_ActivateCoupon value) activateCoupon,
  }) {
    return activateCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_ActivateCoupon value)? activateCoupon,
  }) {
    return activateCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_ActivateCoupon value)? activateCoupon,
    required TResult orElse(),
  }) {
    if (activateCoupon != null) {
      return activateCoupon(this);
    }
    return orElse();
  }
}

abstract class _ActivateCoupon implements CouponsEvent {
  const factory _ActivateCoupon(
          {required final CouponActivateQuery couponActivateQuery}) =
      _$ActivateCouponImpl;

  CouponActivateQuery get couponActivateQuery;
  @JsonKey(ignore: true)
  _$$ActivateCouponImplCopyWith<_$ActivateCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CouponsState {
  bool get isLoding => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get showMessage => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetCouponResponseModel? get getCouponResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponsStateCopyWith<CouponsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsStateCopyWith<$Res> {
  factory $CouponsStateCopyWith(
          CouponsState value, $Res Function(CouponsState) then) =
      _$CouponsStateCopyWithImpl<$Res, CouponsState>;
  @useResult
  $Res call(
      {bool isLoding,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMessage,
      String? message,
      GetCouponResponseModel? getCouponResponseModel});
}

/// @nodoc
class _$CouponsStateCopyWithImpl<$Res, $Val extends CouponsState>
    implements $CouponsStateCopyWith<$Res> {
  _$CouponsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? hasError = null,
    Object? isAdding = null,
    Object? isDone = null,
    Object? showMessage = null,
    Object? message = freezed,
    Object? getCouponResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getCouponResponseModel: freezed == getCouponResponseModel
          ? _value.getCouponResponseModel
          : getCouponResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCouponResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CouponsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoding,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMessage,
      String? message,
      GetCouponResponseModel? getCouponResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CouponsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? hasError = null,
    Object? isAdding = null,
    Object? isDone = null,
    Object? showMessage = null,
    Object? message = freezed,
    Object? getCouponResponseModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getCouponResponseModel: freezed == getCouponResponseModel
          ? _value.getCouponResponseModel
          : getCouponResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCouponResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoding,
      required this.hasError,
      required this.isAdding,
      required this.isDone,
      required this.showMessage,
      this.message,
      this.getCouponResponseModel});

  @override
  final bool isLoding;
  @override
  final bool hasError;
  @override
  final bool isAdding;
  @override
  final bool isDone;
  @override
  final bool showMessage;
  @override
  final String? message;
  @override
  final GetCouponResponseModel? getCouponResponseModel;

  @override
  String toString() {
    return 'CouponsState(isLoding: $isLoding, hasError: $hasError, isAdding: $isAdding, isDone: $isDone, showMessage: $showMessage, message: $message, getCouponResponseModel: $getCouponResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoding, isLoding) ||
                other.isLoding == isLoding) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getCouponResponseModel, getCouponResponseModel) ||
                other.getCouponResponseModel == getCouponResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoding, hasError, isAdding,
      isDone, showMessage, message, getCouponResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CouponsState {
  const factory _Initial(
      {required final bool isLoding,
      required final bool hasError,
      required final bool isAdding,
      required final bool isDone,
      required final bool showMessage,
      final String? message,
      final GetCouponResponseModel? getCouponResponseModel}) = _$InitialImpl;

  @override
  bool get isLoding;
  @override
  bool get hasError;
  @override
  bool get isAdding;
  @override
  bool get isDone;
  @override
  bool get showMessage;
  @override
  String? get message;
  @override
  GetCouponResponseModel? get getCouponResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
