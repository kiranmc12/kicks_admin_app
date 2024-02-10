// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OffersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(AddOfferModel addOfferModel) addOffer,
    required TResult Function(DeleteOfferQuery deleteOfferQuery) deleteOffer,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(AddOfferModel addOfferModel)? addOffer,
    TResult? Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(AddOfferModel addOfferModel)? addOffer,
    TResult Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_AddOffer value) addOffer,
    required TResult Function(_DeleteOffer value) deleteOffer,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_AddOffer value)? addOffer,
    TResult? Function(_DeleteOffer value)? deleteOffer,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_AddOffer value)? addOffer,
    TResult Function(_DeleteOffer value)? deleteOffer,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res, OffersEvent>;
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res, $Val extends OffersEvent>
    implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOffersImplCopyWith<$Res> {
  factory _$$GetOffersImplCopyWith(
          _$GetOffersImpl value, $Res Function(_$GetOffersImpl) then) =
      __$$GetOffersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOffersImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$GetOffersImpl>
    implements _$$GetOffersImplCopyWith<$Res> {
  __$$GetOffersImplCopyWithImpl(
      _$GetOffersImpl _value, $Res Function(_$GetOffersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOffersImpl implements _GetOffers {
  const _$GetOffersImpl();

  @override
  String toString() {
    return 'OffersEvent.getOffers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOffersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(AddOfferModel addOfferModel) addOffer,
    required TResult Function(DeleteOfferQuery deleteOfferQuery) deleteOffer,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return getOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(AddOfferModel addOfferModel)? addOffer,
    TResult? Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return getOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(AddOfferModel addOfferModel)? addOffer,
    TResult Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_AddOffer value) addOffer,
    required TResult Function(_DeleteOffer value) deleteOffer,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return getOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_AddOffer value)? addOffer,
    TResult? Function(_DeleteOffer value)? deleteOffer,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return getOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_AddOffer value)? addOffer,
    TResult Function(_DeleteOffer value)? deleteOffer,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers(this);
    }
    return orElse();
  }
}

abstract class _GetOffers implements OffersEvent {
  const factory _GetOffers() = _$GetOffersImpl;
}

/// @nodoc
abstract class _$$AddOfferImplCopyWith<$Res> {
  factory _$$AddOfferImplCopyWith(
          _$AddOfferImpl value, $Res Function(_$AddOfferImpl) then) =
      __$$AddOfferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddOfferModel addOfferModel});
}

/// @nodoc
class __$$AddOfferImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$AddOfferImpl>
    implements _$$AddOfferImplCopyWith<$Res> {
  __$$AddOfferImplCopyWithImpl(
      _$AddOfferImpl _value, $Res Function(_$AddOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOfferModel = null,
  }) {
    return _then(_$AddOfferImpl(
      addOfferModel: null == addOfferModel
          ? _value.addOfferModel
          : addOfferModel // ignore: cast_nullable_to_non_nullable
              as AddOfferModel,
    ));
  }
}

/// @nodoc

class _$AddOfferImpl implements _AddOffer {
  const _$AddOfferImpl({required this.addOfferModel});

  @override
  final AddOfferModel addOfferModel;

  @override
  String toString() {
    return 'OffersEvent.addOffer(addOfferModel: $addOfferModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOfferImpl &&
            (identical(other.addOfferModel, addOfferModel) ||
                other.addOfferModel == addOfferModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addOfferModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOfferImplCopyWith<_$AddOfferImpl> get copyWith =>
      __$$AddOfferImplCopyWithImpl<_$AddOfferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(AddOfferModel addOfferModel) addOffer,
    required TResult Function(DeleteOfferQuery deleteOfferQuery) deleteOffer,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return addOffer(addOfferModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(AddOfferModel addOfferModel)? addOffer,
    TResult? Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return addOffer?.call(addOfferModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(AddOfferModel addOfferModel)? addOffer,
    TResult Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (addOffer != null) {
      return addOffer(addOfferModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_AddOffer value) addOffer,
    required TResult Function(_DeleteOffer value) deleteOffer,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return addOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_AddOffer value)? addOffer,
    TResult? Function(_DeleteOffer value)? deleteOffer,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return addOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_AddOffer value)? addOffer,
    TResult Function(_DeleteOffer value)? deleteOffer,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (addOffer != null) {
      return addOffer(this);
    }
    return orElse();
  }
}

abstract class _AddOffer implements OffersEvent {
  const factory _AddOffer({required final AddOfferModel addOfferModel}) =
      _$AddOfferImpl;

  AddOfferModel get addOfferModel;
  @JsonKey(ignore: true)
  _$$AddOfferImplCopyWith<_$AddOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteOfferImplCopyWith<$Res> {
  factory _$$DeleteOfferImplCopyWith(
          _$DeleteOfferImpl value, $Res Function(_$DeleteOfferImpl) then) =
      __$$DeleteOfferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteOfferQuery deleteOfferQuery});
}

/// @nodoc
class __$$DeleteOfferImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$DeleteOfferImpl>
    implements _$$DeleteOfferImplCopyWith<$Res> {
  __$$DeleteOfferImplCopyWithImpl(
      _$DeleteOfferImpl _value, $Res Function(_$DeleteOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteOfferQuery = null,
  }) {
    return _then(_$DeleteOfferImpl(
      deleteOfferQuery: null == deleteOfferQuery
          ? _value.deleteOfferQuery
          : deleteOfferQuery // ignore: cast_nullable_to_non_nullable
              as DeleteOfferQuery,
    ));
  }
}

/// @nodoc

class _$DeleteOfferImpl implements _DeleteOffer {
  const _$DeleteOfferImpl({required this.deleteOfferQuery});

  @override
  final DeleteOfferQuery deleteOfferQuery;

  @override
  String toString() {
    return 'OffersEvent.deleteOffer(deleteOfferQuery: $deleteOfferQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOfferImpl &&
            (identical(other.deleteOfferQuery, deleteOfferQuery) ||
                other.deleteOfferQuery == deleteOfferQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteOfferQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOfferImplCopyWith<_$DeleteOfferImpl> get copyWith =>
      __$$DeleteOfferImplCopyWithImpl<_$DeleteOfferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(AddOfferModel addOfferModel) addOffer,
    required TResult Function(DeleteOfferQuery deleteOfferQuery) deleteOffer,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return deleteOffer(deleteOfferQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(AddOfferModel addOfferModel)? addOffer,
    TResult? Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return deleteOffer?.call(deleteOfferQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(AddOfferModel addOfferModel)? addOffer,
    TResult Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (deleteOffer != null) {
      return deleteOffer(deleteOfferQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_AddOffer value) addOffer,
    required TResult Function(_DeleteOffer value) deleteOffer,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return deleteOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_AddOffer value)? addOffer,
    TResult? Function(_DeleteOffer value)? deleteOffer,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return deleteOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_AddOffer value)? addOffer,
    TResult Function(_DeleteOffer value)? deleteOffer,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (deleteOffer != null) {
      return deleteOffer(this);
    }
    return orElse();
  }
}

abstract class _DeleteOffer implements OffersEvent {
  const factory _DeleteOffer(
      {required final DeleteOfferQuery deleteOfferQuery}) = _$DeleteOfferImpl;

  DeleteOfferQuery get deleteOfferQuery;
  @JsonKey(ignore: true)
  _$$DeleteOfferImplCopyWith<_$DeleteOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCatogoryImplCopyWith<$Res> {
  factory _$$SelectCatogoryImplCopyWith(_$SelectCatogoryImpl value,
          $Res Function(_$SelectCatogoryImpl) then) =
      __$$SelectCatogoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedCatogory, String catogory});
}

/// @nodoc
class __$$SelectCatogoryImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$SelectCatogoryImpl>
    implements _$$SelectCatogoryImplCopyWith<$Res> {
  __$$SelectCatogoryImplCopyWithImpl(
      _$SelectCatogoryImpl _value, $Res Function(_$SelectCatogoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCatogory = null,
    Object? catogory = null,
  }) {
    return _then(_$SelectCatogoryImpl(
      selectedCatogory: null == selectedCatogory
          ? _value.selectedCatogory
          : selectedCatogory // ignore: cast_nullable_to_non_nullable
              as int,
      catogory: null == catogory
          ? _value.catogory
          : catogory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCatogoryImpl implements _SelectCatogory {
  const _$SelectCatogoryImpl(
      {required this.selectedCatogory, required this.catogory});

  @override
  final int selectedCatogory;
  @override
  final String catogory;

  @override
  String toString() {
    return 'OffersEvent.selectCatogory(selectedCatogory: $selectedCatogory, catogory: $catogory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCatogoryImpl &&
            (identical(other.selectedCatogory, selectedCatogory) ||
                other.selectedCatogory == selectedCatogory) &&
            (identical(other.catogory, catogory) ||
                other.catogory == catogory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCatogory, catogory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCatogoryImplCopyWith<_$SelectCatogoryImpl> get copyWith =>
      __$$SelectCatogoryImplCopyWithImpl<_$SelectCatogoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(AddOfferModel addOfferModel) addOffer,
    required TResult Function(DeleteOfferQuery deleteOfferQuery) deleteOffer,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return selectCatogory(selectedCatogory, catogory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(AddOfferModel addOfferModel)? addOffer,
    TResult? Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return selectCatogory?.call(selectedCatogory, catogory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(AddOfferModel addOfferModel)? addOffer,
    TResult Function(DeleteOfferQuery deleteOfferQuery)? deleteOffer,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (selectCatogory != null) {
      return selectCatogory(selectedCatogory, catogory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_AddOffer value) addOffer,
    required TResult Function(_DeleteOffer value) deleteOffer,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return selectCatogory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_AddOffer value)? addOffer,
    TResult? Function(_DeleteOffer value)? deleteOffer,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return selectCatogory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_AddOffer value)? addOffer,
    TResult Function(_DeleteOffer value)? deleteOffer,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (selectCatogory != null) {
      return selectCatogory(this);
    }
    return orElse();
  }
}

abstract class _SelectCatogory implements OffersEvent {
  const factory _SelectCatogory(
      {required final int selectedCatogory,
      required final String catogory}) = _$SelectCatogoryImpl;

  int get selectedCatogory;
  String get catogory;
  @JsonKey(ignore: true)
  _$$SelectCatogoryImplCopyWith<_$SelectCatogoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OffersState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get showMessage => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetOfferResponseModel? get getOfferResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffersStateCopyWith<OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res, OffersState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMessage,
      String? category,
      int? categoryId,
      String? message,
      GetOfferResponseModel? getOfferResponseModel});
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res, $Val extends OffersState>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isAdding = null,
    Object? isDone = null,
    Object? showMessage = null,
    Object? category = freezed,
    Object? categoryId = freezed,
    Object? message = freezed,
    Object? getOfferResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getOfferResponseModel: freezed == getOfferResponseModel
          ? _value.getOfferResponseModel
          : getOfferResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOfferResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMessage,
      String? category,
      int? categoryId,
      String? message,
      GetOfferResponseModel? getOfferResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isAdding = null,
    Object? isDone = null,
    Object? showMessage = null,
    Object? category = freezed,
    Object? categoryId = freezed,
    Object? message = freezed,
    Object? getOfferResponseModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getOfferResponseModel: freezed == getOfferResponseModel
          ? _value.getOfferResponseModel
          : getOfferResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOfferResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isAdding,
      required this.isDone,
      required this.showMessage,
      this.category,
      this.categoryId,
      this.message,
      this.getOfferResponseModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isAdding;
  @override
  final bool isDone;
  @override
  final bool showMessage;
  @override
  final String? category;
  @override
  final int? categoryId;
  @override
  final String? message;
  @override
  final GetOfferResponseModel? getOfferResponseModel;

  @override
  String toString() {
    return 'OffersState(isLoading: $isLoading, hasError: $hasError, isAdding: $isAdding, isDone: $isDone, showMessage: $showMessage, category: $category, categoryId: $categoryId, message: $message, getOfferResponseModel: $getOfferResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getOfferResponseModel, getOfferResponseModel) ||
                other.getOfferResponseModel == getOfferResponseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      isAdding,
      isDone,
      showMessage,
      category,
      categoryId,
      message,
      getOfferResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OffersState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isAdding,
      required final bool isDone,
      required final bool showMessage,
      final String? category,
      final int? categoryId,
      final String? message,
      final GetOfferResponseModel? getOfferResponseModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isAdding;
  @override
  bool get isDone;
  @override
  bool get showMessage;
  @override
  String? get category;
  @override
  int? get categoryId;
  @override
  String? get message;
  @override
  GetOfferResponseModel? get getOfferResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
