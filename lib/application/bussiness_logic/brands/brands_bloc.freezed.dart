// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrandsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
    required TResult Function(PostBrandModel postBrandModel) addBrand,
    required TResult Function(DeleteBrandModel deleteBrandModel) deleteBrand,
    required TResult Function(PutBrandModel putBrandModel) renameBrand,
    required TResult Function(String category) tapEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
    TResult? Function(PostBrandModel postBrandModel)? addBrand,
    TResult? Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult? Function(PutBrandModel putBrandModel)? renameBrand,
    TResult? Function(String category)? tapEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    TResult Function(PostBrandModel postBrandModel)? addBrand,
    TResult Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult Function(PutBrandModel putBrandModel)? renameBrand,
    TResult Function(String category)? tapEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBrand value) getBrand,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_RenameBrand value) renameBrand,
    required TResult Function(_TapEdit value) tapEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBrand value)? getBrand,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_RenameBrand value)? renameBrand,
    TResult? Function(_TapEdit value)? tapEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBrand value)? getBrand,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_RenameBrand value)? renameBrand,
    TResult Function(_TapEdit value)? tapEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsEventCopyWith<$Res> {
  factory $BrandsEventCopyWith(
          BrandsEvent value, $Res Function(BrandsEvent) then) =
      _$BrandsEventCopyWithImpl<$Res, BrandsEvent>;
}

/// @nodoc
class _$BrandsEventCopyWithImpl<$Res, $Val extends BrandsEvent>
    implements $BrandsEventCopyWith<$Res> {
  _$BrandsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBrandImplCopyWith<$Res> {
  factory _$$GetBrandImplCopyWith(
          _$GetBrandImpl value, $Res Function(_$GetBrandImpl) then) =
      __$$GetBrandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandImplCopyWithImpl<$Res>
    extends _$BrandsEventCopyWithImpl<$Res, _$GetBrandImpl>
    implements _$$GetBrandImplCopyWith<$Res> {
  __$$GetBrandImplCopyWithImpl(
      _$GetBrandImpl _value, $Res Function(_$GetBrandImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBrandImpl implements _GetBrand {
  const _$GetBrandImpl();

  @override
  String toString() {
    return 'BrandsEvent.getBrand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
    required TResult Function(PostBrandModel postBrandModel) addBrand,
    required TResult Function(DeleteBrandModel deleteBrandModel) deleteBrand,
    required TResult Function(PutBrandModel putBrandModel) renameBrand,
    required TResult Function(String category) tapEdit,
  }) {
    return getBrand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
    TResult? Function(PostBrandModel postBrandModel)? addBrand,
    TResult? Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult? Function(PutBrandModel putBrandModel)? renameBrand,
    TResult? Function(String category)? tapEdit,
  }) {
    return getBrand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    TResult Function(PostBrandModel postBrandModel)? addBrand,
    TResult Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult Function(PutBrandModel putBrandModel)? renameBrand,
    TResult Function(String category)? tapEdit,
    required TResult orElse(),
  }) {
    if (getBrand != null) {
      return getBrand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBrand value) getBrand,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_RenameBrand value) renameBrand,
    required TResult Function(_TapEdit value) tapEdit,
  }) {
    return getBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBrand value)? getBrand,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_RenameBrand value)? renameBrand,
    TResult? Function(_TapEdit value)? tapEdit,
  }) {
    return getBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBrand value)? getBrand,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_RenameBrand value)? renameBrand,
    TResult Function(_TapEdit value)? tapEdit,
    required TResult orElse(),
  }) {
    if (getBrand != null) {
      return getBrand(this);
    }
    return orElse();
  }
}

abstract class _GetBrand implements BrandsEvent {
  const factory _GetBrand() = _$GetBrandImpl;
}

/// @nodoc
abstract class _$$AddBrandImplCopyWith<$Res> {
  factory _$$AddBrandImplCopyWith(
          _$AddBrandImpl value, $Res Function(_$AddBrandImpl) then) =
      __$$AddBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostBrandModel postBrandModel});
}

/// @nodoc
class __$$AddBrandImplCopyWithImpl<$Res>
    extends _$BrandsEventCopyWithImpl<$Res, _$AddBrandImpl>
    implements _$$AddBrandImplCopyWith<$Res> {
  __$$AddBrandImplCopyWithImpl(
      _$AddBrandImpl _value, $Res Function(_$AddBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postBrandModel = null,
  }) {
    return _then(_$AddBrandImpl(
      postBrandModel: null == postBrandModel
          ? _value.postBrandModel
          : postBrandModel // ignore: cast_nullable_to_non_nullable
              as PostBrandModel,
    ));
  }
}

/// @nodoc

class _$AddBrandImpl implements _AddBrand {
  const _$AddBrandImpl({required this.postBrandModel});

  @override
  final PostBrandModel postBrandModel;

  @override
  String toString() {
    return 'BrandsEvent.addBrand(postBrandModel: $postBrandModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBrandImpl &&
            (identical(other.postBrandModel, postBrandModel) ||
                other.postBrandModel == postBrandModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postBrandModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      __$$AddBrandImplCopyWithImpl<_$AddBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
    required TResult Function(PostBrandModel postBrandModel) addBrand,
    required TResult Function(DeleteBrandModel deleteBrandModel) deleteBrand,
    required TResult Function(PutBrandModel putBrandModel) renameBrand,
    required TResult Function(String category) tapEdit,
  }) {
    return addBrand(postBrandModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
    TResult? Function(PostBrandModel postBrandModel)? addBrand,
    TResult? Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult? Function(PutBrandModel putBrandModel)? renameBrand,
    TResult? Function(String category)? tapEdit,
  }) {
    return addBrand?.call(postBrandModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    TResult Function(PostBrandModel postBrandModel)? addBrand,
    TResult Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult Function(PutBrandModel putBrandModel)? renameBrand,
    TResult Function(String category)? tapEdit,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(postBrandModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBrand value) getBrand,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_RenameBrand value) renameBrand,
    required TResult Function(_TapEdit value) tapEdit,
  }) {
    return addBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBrand value)? getBrand,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_RenameBrand value)? renameBrand,
    TResult? Function(_TapEdit value)? tapEdit,
  }) {
    return addBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBrand value)? getBrand,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_RenameBrand value)? renameBrand,
    TResult Function(_TapEdit value)? tapEdit,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(this);
    }
    return orElse();
  }
}

abstract class _AddBrand implements BrandsEvent {
  const factory _AddBrand({required final PostBrandModel postBrandModel}) =
      _$AddBrandImpl;

  PostBrandModel get postBrandModel;
  @JsonKey(ignore: true)
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBrandImplCopyWith<$Res> {
  factory _$$DeleteBrandImplCopyWith(
          _$DeleteBrandImpl value, $Res Function(_$DeleteBrandImpl) then) =
      __$$DeleteBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteBrandModel deleteBrandModel});
}

/// @nodoc
class __$$DeleteBrandImplCopyWithImpl<$Res>
    extends _$BrandsEventCopyWithImpl<$Res, _$DeleteBrandImpl>
    implements _$$DeleteBrandImplCopyWith<$Res> {
  __$$DeleteBrandImplCopyWithImpl(
      _$DeleteBrandImpl _value, $Res Function(_$DeleteBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteBrandModel = null,
  }) {
    return _then(_$DeleteBrandImpl(
      deleteBrandModel: null == deleteBrandModel
          ? _value.deleteBrandModel
          : deleteBrandModel // ignore: cast_nullable_to_non_nullable
              as DeleteBrandModel,
    ));
  }
}

/// @nodoc

class _$DeleteBrandImpl implements _DeleteBrand {
  const _$DeleteBrandImpl({required this.deleteBrandModel});

  @override
  final DeleteBrandModel deleteBrandModel;

  @override
  String toString() {
    return 'BrandsEvent.deleteBrand(deleteBrandModel: $deleteBrandModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBrandImpl &&
            (identical(other.deleteBrandModel, deleteBrandModel) ||
                other.deleteBrandModel == deleteBrandModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteBrandModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      __$$DeleteBrandImplCopyWithImpl<_$DeleteBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
    required TResult Function(PostBrandModel postBrandModel) addBrand,
    required TResult Function(DeleteBrandModel deleteBrandModel) deleteBrand,
    required TResult Function(PutBrandModel putBrandModel) renameBrand,
    required TResult Function(String category) tapEdit,
  }) {
    return deleteBrand(deleteBrandModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
    TResult? Function(PostBrandModel postBrandModel)? addBrand,
    TResult? Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult? Function(PutBrandModel putBrandModel)? renameBrand,
    TResult? Function(String category)? tapEdit,
  }) {
    return deleteBrand?.call(deleteBrandModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    TResult Function(PostBrandModel postBrandModel)? addBrand,
    TResult Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult Function(PutBrandModel putBrandModel)? renameBrand,
    TResult Function(String category)? tapEdit,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(deleteBrandModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBrand value) getBrand,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_RenameBrand value) renameBrand,
    required TResult Function(_TapEdit value) tapEdit,
  }) {
    return deleteBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBrand value)? getBrand,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_RenameBrand value)? renameBrand,
    TResult? Function(_TapEdit value)? tapEdit,
  }) {
    return deleteBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBrand value)? getBrand,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_RenameBrand value)? renameBrand,
    TResult Function(_TapEdit value)? tapEdit,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(this);
    }
    return orElse();
  }
}

abstract class _DeleteBrand implements BrandsEvent {
  const factory _DeleteBrand(
      {required final DeleteBrandModel deleteBrandModel}) = _$DeleteBrandImpl;

  DeleteBrandModel get deleteBrandModel;
  @JsonKey(ignore: true)
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RenameBrandImplCopyWith<$Res> {
  factory _$$RenameBrandImplCopyWith(
          _$RenameBrandImpl value, $Res Function(_$RenameBrandImpl) then) =
      __$$RenameBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PutBrandModel putBrandModel});
}

/// @nodoc
class __$$RenameBrandImplCopyWithImpl<$Res>
    extends _$BrandsEventCopyWithImpl<$Res, _$RenameBrandImpl>
    implements _$$RenameBrandImplCopyWith<$Res> {
  __$$RenameBrandImplCopyWithImpl(
      _$RenameBrandImpl _value, $Res Function(_$RenameBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? putBrandModel = null,
  }) {
    return _then(_$RenameBrandImpl(
      putBrandModel: null == putBrandModel
          ? _value.putBrandModel
          : putBrandModel // ignore: cast_nullable_to_non_nullable
              as PutBrandModel,
    ));
  }
}

/// @nodoc

class _$RenameBrandImpl implements _RenameBrand {
  const _$RenameBrandImpl({required this.putBrandModel});

  @override
  final PutBrandModel putBrandModel;

  @override
  String toString() {
    return 'BrandsEvent.renameBrand(putBrandModel: $putBrandModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameBrandImpl &&
            (identical(other.putBrandModel, putBrandModel) ||
                other.putBrandModel == putBrandModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, putBrandModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameBrandImplCopyWith<_$RenameBrandImpl> get copyWith =>
      __$$RenameBrandImplCopyWithImpl<_$RenameBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
    required TResult Function(PostBrandModel postBrandModel) addBrand,
    required TResult Function(DeleteBrandModel deleteBrandModel) deleteBrand,
    required TResult Function(PutBrandModel putBrandModel) renameBrand,
    required TResult Function(String category) tapEdit,
  }) {
    return renameBrand(putBrandModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
    TResult? Function(PostBrandModel postBrandModel)? addBrand,
    TResult? Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult? Function(PutBrandModel putBrandModel)? renameBrand,
    TResult? Function(String category)? tapEdit,
  }) {
    return renameBrand?.call(putBrandModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    TResult Function(PostBrandModel postBrandModel)? addBrand,
    TResult Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult Function(PutBrandModel putBrandModel)? renameBrand,
    TResult Function(String category)? tapEdit,
    required TResult orElse(),
  }) {
    if (renameBrand != null) {
      return renameBrand(putBrandModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBrand value) getBrand,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_RenameBrand value) renameBrand,
    required TResult Function(_TapEdit value) tapEdit,
  }) {
    return renameBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBrand value)? getBrand,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_RenameBrand value)? renameBrand,
    TResult? Function(_TapEdit value)? tapEdit,
  }) {
    return renameBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBrand value)? getBrand,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_RenameBrand value)? renameBrand,
    TResult Function(_TapEdit value)? tapEdit,
    required TResult orElse(),
  }) {
    if (renameBrand != null) {
      return renameBrand(this);
    }
    return orElse();
  }
}

abstract class _RenameBrand implements BrandsEvent {
  const factory _RenameBrand({required final PutBrandModel putBrandModel}) =
      _$RenameBrandImpl;

  PutBrandModel get putBrandModel;
  @JsonKey(ignore: true)
  _$$RenameBrandImplCopyWith<_$RenameBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TapEditImplCopyWith<$Res> {
  factory _$$TapEditImplCopyWith(
          _$TapEditImpl value, $Res Function(_$TapEditImpl) then) =
      __$$TapEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$TapEditImplCopyWithImpl<$Res>
    extends _$BrandsEventCopyWithImpl<$Res, _$TapEditImpl>
    implements _$$TapEditImplCopyWith<$Res> {
  __$$TapEditImplCopyWithImpl(
      _$TapEditImpl _value, $Res Function(_$TapEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$TapEditImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TapEditImpl implements _TapEdit {
  const _$TapEditImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'BrandsEvent.tapEdit(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TapEditImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TapEditImplCopyWith<_$TapEditImpl> get copyWith =>
      __$$TapEditImplCopyWithImpl<_$TapEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrand,
    required TResult Function(PostBrandModel postBrandModel) addBrand,
    required TResult Function(DeleteBrandModel deleteBrandModel) deleteBrand,
    required TResult Function(PutBrandModel putBrandModel) renameBrand,
    required TResult Function(String category) tapEdit,
  }) {
    return tapEdit(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBrand,
    TResult? Function(PostBrandModel postBrandModel)? addBrand,
    TResult? Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult? Function(PutBrandModel putBrandModel)? renameBrand,
    TResult? Function(String category)? tapEdit,
  }) {
    return tapEdit?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrand,
    TResult Function(PostBrandModel postBrandModel)? addBrand,
    TResult Function(DeleteBrandModel deleteBrandModel)? deleteBrand,
    TResult Function(PutBrandModel putBrandModel)? renameBrand,
    TResult Function(String category)? tapEdit,
    required TResult orElse(),
  }) {
    if (tapEdit != null) {
      return tapEdit(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBrand value) getBrand,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_RenameBrand value) renameBrand,
    required TResult Function(_TapEdit value) tapEdit,
  }) {
    return tapEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBrand value)? getBrand,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_RenameBrand value)? renameBrand,
    TResult? Function(_TapEdit value)? tapEdit,
  }) {
    return tapEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBrand value)? getBrand,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_RenameBrand value)? renameBrand,
    TResult Function(_TapEdit value)? tapEdit,
    required TResult orElse(),
  }) {
    if (tapEdit != null) {
      return tapEdit(this);
    }
    return orElse();
  }
}

abstract class _TapEdit implements BrandsEvent {
  const factory _TapEdit({required final String category}) = _$TapEditImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$TapEditImplCopyWith<_$TapEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get showMwssage => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetBrandModel? get getBrandModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandsStateCopyWith<BrandsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsStateCopyWith<$Res> {
  factory $BrandsStateCopyWith(
          BrandsState value, $Res Function(BrandsState) then) =
      _$BrandsStateCopyWithImpl<$Res, BrandsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMwssage,
      bool isUpdating,
      String? message,
      GetBrandModel? getBrandModel});
}

/// @nodoc
class _$BrandsStateCopyWithImpl<$Res, $Val extends BrandsState>
    implements $BrandsStateCopyWith<$Res> {
  _$BrandsStateCopyWithImpl(this._value, this._then);

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
    Object? showMwssage = null,
    Object? isUpdating = null,
    Object? message = freezed,
    Object? getBrandModel = freezed,
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
      showMwssage: null == showMwssage
          ? _value.showMwssage
          : showMwssage // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getBrandModel: freezed == getBrandModel
          ? _value.getBrandModel
          : getBrandModel // ignore: cast_nullable_to_non_nullable
              as GetBrandModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $BrandsStateCopyWith<$Res> {
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
      bool showMwssage,
      bool isUpdating,
      String? message,
      GetBrandModel? getBrandModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BrandsStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? showMwssage = null,
    Object? isUpdating = null,
    Object? message = freezed,
    Object? getBrandModel = freezed,
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
      showMwssage: null == showMwssage
          ? _value.showMwssage
          : showMwssage // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getBrandModel: freezed == getBrandModel
          ? _value.getBrandModel
          : getBrandModel // ignore: cast_nullable_to_non_nullable
              as GetBrandModel?,
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
      required this.showMwssage,
      required this.isUpdating,
      this.message,
      this.getBrandModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isAdding;
  @override
  final bool isDone;
  @override
  final bool showMwssage;
  @override
  final bool isUpdating;
  @override
  final String? message;
  @override
  final GetBrandModel? getBrandModel;

  @override
  String toString() {
    return 'BrandsState(isLoading: $isLoading, hasError: $hasError, isAdding: $isAdding, isDone: $isDone, showMwssage: $showMwssage, isUpdating: $isUpdating, message: $message, getBrandModel: $getBrandModel)';
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
            (identical(other.showMwssage, showMwssage) ||
                other.showMwssage == showMwssage) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getBrandModel, getBrandModel) ||
                other.getBrandModel == getBrandModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isAdding,
      isDone, showMwssage, isUpdating, message, getBrandModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements BrandsState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isAdding,
      required final bool isDone,
      required final bool showMwssage,
      required final bool isUpdating,
      final String? message,
      final GetBrandModel? getBrandModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isAdding;
  @override
  bool get isDone;
  @override
  bool get showMwssage;
  @override
  bool get isUpdating;
  @override
  String? get message;
  @override
  GetBrandModel? get getBrandModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
