// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function(Product product) updateProductDetail,
    required TResult Function(int productId) deleteProductDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function(Product product)? updateProductDetail,
    TResult? Function(int productId)? deleteProductDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function(Product product)? updateProductDetail,
    TResult Function(int productId)? deleteProductDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailEventCopyWith(
    ProductDetailEvent value,
    $Res Function(ProductDetailEvent) then,
  ) = _$ProductDetailEventCopyWithImpl<$Res, ProductDetailEvent>;
}

/// @nodoc
class _$ProductDetailEventCopyWithImpl<$Res, $Val extends ProductDetailEvent>
    implements $ProductDetailEventCopyWith<$Res> {
  _$ProductDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProductDetailImplCopyWith<$Res> {
  factory _$$LoadProductDetailImplCopyWith(
    _$LoadProductDetailImpl value,
    $Res Function(_$LoadProductDetailImpl) then,
  ) = __$$LoadProductDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$LoadProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$LoadProductDetailImpl>
    implements _$$LoadProductDetailImplCopyWith<$Res> {
  __$$LoadProductDetailImplCopyWithImpl(
    _$LoadProductDetailImpl _value,
    $Res Function(_$LoadProductDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null}) {
    return _then(
      _$LoadProductDetailImpl(
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadProductDetailImpl implements LoadProductDetail {
  const _$LoadProductDetailImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductDetailEvent.loadProductDetail(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProductDetailImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProductDetailImplCopyWith<_$LoadProductDetailImpl> get copyWith =>
      __$$LoadProductDetailImplCopyWithImpl<_$LoadProductDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function(Product product) updateProductDetail,
    required TResult Function(int productId) deleteProductDetail,
  }) {
    return loadProductDetail(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function(Product product)? updateProductDetail,
    TResult? Function(int productId)? deleteProductDetail,
  }) {
    return loadProductDetail?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function(Product product)? updateProductDetail,
    TResult Function(int productId)? deleteProductDetail,
    required TResult orElse(),
  }) {
    if (loadProductDetail != null) {
      return loadProductDetail(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
  }) {
    return loadProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
  }) {
    return loadProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    required TResult orElse(),
  }) {
    if (loadProductDetail != null) {
      return loadProductDetail(this);
    }
    return orElse();
  }
}

abstract class LoadProductDetail implements ProductDetailEvent {
  const factory LoadProductDetail(final int productId) =
      _$LoadProductDetailImpl;

  int get productId;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadProductDetailImplCopyWith<_$LoadProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductDetailImplCopyWith<$Res> {
  factory _$$UpdateProductDetailImplCopyWith(
    _$UpdateProductDetailImpl value,
    $Res Function(_$UpdateProductDetailImpl) then,
  ) = __$$UpdateProductDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$UpdateProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$UpdateProductDetailImpl>
    implements _$$UpdateProductDetailImplCopyWith<$Res> {
  __$$UpdateProductDetailImplCopyWithImpl(
    _$UpdateProductDetailImpl _value,
    $Res Function(_$UpdateProductDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$UpdateProductDetailImpl(
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                  as Product,
      ),
    );
  }
}

/// @nodoc

class _$UpdateProductDetailImpl implements UpdateProductDetail {
  const _$UpdateProductDetailImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailEvent.updateProductDetail(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductDetailImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductDetailImplCopyWith<_$UpdateProductDetailImpl> get copyWith =>
      __$$UpdateProductDetailImplCopyWithImpl<_$UpdateProductDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function(Product product) updateProductDetail,
    required TResult Function(int productId) deleteProductDetail,
  }) {
    return updateProductDetail(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function(Product product)? updateProductDetail,
    TResult? Function(int productId)? deleteProductDetail,
  }) {
    return updateProductDetail?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function(Product product)? updateProductDetail,
    TResult Function(int productId)? deleteProductDetail,
    required TResult orElse(),
  }) {
    if (updateProductDetail != null) {
      return updateProductDetail(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
  }) {
    return updateProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
  }) {
    return updateProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    required TResult orElse(),
  }) {
    if (updateProductDetail != null) {
      return updateProductDetail(this);
    }
    return orElse();
  }
}

abstract class UpdateProductDetail implements ProductDetailEvent {
  const factory UpdateProductDetail(final Product product) =
      _$UpdateProductDetailImpl;

  Product get product;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProductDetailImplCopyWith<_$UpdateProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductDetailImplCopyWith<$Res> {
  factory _$$DeleteProductDetailImplCopyWith(
    _$DeleteProductDetailImpl value,
    $Res Function(_$DeleteProductDetailImpl) then,
  ) = __$$DeleteProductDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$DeleteProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$DeleteProductDetailImpl>
    implements _$$DeleteProductDetailImplCopyWith<$Res> {
  __$$DeleteProductDetailImplCopyWithImpl(
    _$DeleteProductDetailImpl _value,
    $Res Function(_$DeleteProductDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null}) {
    return _then(
      _$DeleteProductDetailImpl(
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteProductDetailImpl implements DeleteProductDetail {
  const _$DeleteProductDetailImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductDetailEvent.deleteProductDetail(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductDetailImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductDetailImplCopyWith<_$DeleteProductDetailImpl> get copyWith =>
      __$$DeleteProductDetailImplCopyWithImpl<_$DeleteProductDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function(Product product) updateProductDetail,
    required TResult Function(int productId) deleteProductDetail,
  }) {
    return deleteProductDetail(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function(Product product)? updateProductDetail,
    TResult? Function(int productId)? deleteProductDetail,
  }) {
    return deleteProductDetail?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function(Product product)? updateProductDetail,
    TResult Function(int productId)? deleteProductDetail,
    required TResult orElse(),
  }) {
    if (deleteProductDetail != null) {
      return deleteProductDetail(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
  }) {
    return deleteProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
  }) {
    return deleteProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    required TResult orElse(),
  }) {
    if (deleteProductDetail != null) {
      return deleteProductDetail(this);
    }
    return orElse();
  }
}

abstract class DeleteProductDetail implements ProductDetailEvent {
  const factory DeleteProductDetail(final int productId) =
      _$DeleteProductDetailImpl;

  int get productId;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductDetailImplCopyWith<_$DeleteProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailInitial value) initial,
    required TResult Function(ProductDetailLoading value) loading,
    required TResult Function(ProductDetailLoaded value) loaded,
    required TResult Function(ProductDetailDeleted value) deleted,
    required TResult Function(ProductDetailError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailInitial value)? initial,
    TResult? Function(ProductDetailLoading value)? loading,
    TResult? Function(ProductDetailLoaded value)? loaded,
    TResult? Function(ProductDetailDeleted value)? deleted,
    TResult? Function(ProductDetailError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailInitial value)? initial,
    TResult Function(ProductDetailLoading value)? loading,
    TResult Function(ProductDetailLoaded value)? loaded,
    TResult Function(ProductDetailDeleted value)? deleted,
    TResult Function(ProductDetailError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
    ProductDetailState value,
    $Res Function(ProductDetailState) then,
  ) = _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProductDetailInitialImplCopyWith<$Res> {
  factory _$$ProductDetailInitialImplCopyWith(
    _$ProductDetailInitialImpl value,
    $Res Function(_$ProductDetailInitialImpl) then,
  ) = __$$ProductDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailInitialImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailInitialImpl>
    implements _$$ProductDetailInitialImplCopyWith<$Res> {
  __$$ProductDetailInitialImplCopyWithImpl(
    _$ProductDetailInitialImpl _value,
    $Res Function(_$ProductDetailInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductDetailInitialImpl implements ProductDetailInitial {
  const _$ProductDetailInitialImpl();

  @override
  String toString() {
    return 'ProductDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailInitial value) initial,
    required TResult Function(ProductDetailLoading value) loading,
    required TResult Function(ProductDetailLoaded value) loaded,
    required TResult Function(ProductDetailDeleted value) deleted,
    required TResult Function(ProductDetailError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailInitial value)? initial,
    TResult? Function(ProductDetailLoading value)? loading,
    TResult? Function(ProductDetailLoaded value)? loaded,
    TResult? Function(ProductDetailDeleted value)? deleted,
    TResult? Function(ProductDetailError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailInitial value)? initial,
    TResult Function(ProductDetailLoading value)? loading,
    TResult Function(ProductDetailLoaded value)? loaded,
    TResult Function(ProductDetailDeleted value)? deleted,
    TResult Function(ProductDetailError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductDetailInitial implements ProductDetailState {
  const factory ProductDetailInitial() = _$ProductDetailInitialImpl;
}

/// @nodoc
abstract class _$$ProductDetailLoadingImplCopyWith<$Res> {
  factory _$$ProductDetailLoadingImplCopyWith(
    _$ProductDetailLoadingImpl value,
    $Res Function(_$ProductDetailLoadingImpl) then,
  ) = __$$ProductDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailLoadingImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailLoadingImpl>
    implements _$$ProductDetailLoadingImplCopyWith<$Res> {
  __$$ProductDetailLoadingImplCopyWithImpl(
    _$ProductDetailLoadingImpl _value,
    $Res Function(_$ProductDetailLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductDetailLoadingImpl implements ProductDetailLoading {
  const _$ProductDetailLoadingImpl();

  @override
  String toString() {
    return 'ProductDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailInitial value) initial,
    required TResult Function(ProductDetailLoading value) loading,
    required TResult Function(ProductDetailLoaded value) loaded,
    required TResult Function(ProductDetailDeleted value) deleted,
    required TResult Function(ProductDetailError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailInitial value)? initial,
    TResult? Function(ProductDetailLoading value)? loading,
    TResult? Function(ProductDetailLoaded value)? loaded,
    TResult? Function(ProductDetailDeleted value)? deleted,
    TResult? Function(ProductDetailError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailInitial value)? initial,
    TResult Function(ProductDetailLoading value)? loading,
    TResult Function(ProductDetailLoaded value)? loaded,
    TResult Function(ProductDetailDeleted value)? deleted,
    TResult Function(ProductDetailError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailLoading implements ProductDetailState {
  const factory ProductDetailLoading() = _$ProductDetailLoadingImpl;
}

/// @nodoc
abstract class _$$ProductDetailLoadedImplCopyWith<$Res> {
  factory _$$ProductDetailLoadedImplCopyWith(
    _$ProductDetailLoadedImpl value,
    $Res Function(_$ProductDetailLoadedImpl) then,
  ) = __$$ProductDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    Product product,
    bool isUpdating,
    bool isDeleting,
    bool updateSuccess,
    String? updateError,
    String? deleteError,
  });
}

/// @nodoc
class __$$ProductDetailLoadedImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailLoadedImpl>
    implements _$$ProductDetailLoadedImplCopyWith<$Res> {
  __$$ProductDetailLoadedImplCopyWithImpl(
    _$ProductDetailLoadedImpl _value,
    $Res Function(_$ProductDetailLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isUpdating = null,
    Object? isDeleting = null,
    Object? updateSuccess = null,
    Object? updateError = freezed,
    Object? deleteError = freezed,
  }) {
    return _then(
      _$ProductDetailLoadedImpl(
        product: null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                  as Product,
        isUpdating: null == isUpdating
            ? _value.isUpdating
            : isUpdating // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDeleting: null == isDeleting
            ? _value.isDeleting
            : isDeleting // ignore: cast_nullable_to_non_nullable
                  as bool,
        updateSuccess: null == updateSuccess
            ? _value.updateSuccess
            : updateSuccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        updateError: freezed == updateError
            ? _value.updateError
            : updateError // ignore: cast_nullable_to_non_nullable
                  as String?,
        deleteError: freezed == deleteError
            ? _value.deleteError
            : deleteError // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailLoadedImpl implements ProductDetailLoaded {
  const _$ProductDetailLoadedImpl({
    required this.product,
    this.isUpdating = false,
    this.isDeleting = false,
    this.updateSuccess = false,
    this.updateError,
    this.deleteError,
  });

  @override
  final Product product;
  @override
  @JsonKey()
  final bool isUpdating;
  @override
  @JsonKey()
  final bool isDeleting;
  @override
  @JsonKey()
  final bool updateSuccess;
  @override
  final String? updateError;
  @override
  final String? deleteError;

  @override
  String toString() {
    return 'ProductDetailState.loaded(product: $product, isUpdating: $isUpdating, isDeleting: $isDeleting, updateSuccess: $updateSuccess, updateError: $updateError, deleteError: $deleteError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailLoadedImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.updateSuccess, updateSuccess) ||
                other.updateSuccess == updateSuccess) &&
            (identical(other.updateError, updateError) ||
                other.updateError == updateError) &&
            (identical(other.deleteError, deleteError) ||
                other.deleteError == deleteError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    product,
    isUpdating,
    isDeleting,
    updateSuccess,
    updateError,
    deleteError,
  );

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailLoadedImplCopyWith<_$ProductDetailLoadedImpl> get copyWith =>
      __$$ProductDetailLoadedImplCopyWithImpl<_$ProductDetailLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return loaded(
      product,
      isUpdating,
      isDeleting,
      updateSuccess,
      updateError,
      deleteError,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
      product,
      isUpdating,
      isDeleting,
      updateSuccess,
      updateError,
      deleteError,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
        product,
        isUpdating,
        isDeleting,
        updateSuccess,
        updateError,
        deleteError,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailInitial value) initial,
    required TResult Function(ProductDetailLoading value) loading,
    required TResult Function(ProductDetailLoaded value) loaded,
    required TResult Function(ProductDetailDeleted value) deleted,
    required TResult Function(ProductDetailError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailInitial value)? initial,
    TResult? Function(ProductDetailLoading value)? loading,
    TResult? Function(ProductDetailLoaded value)? loaded,
    TResult? Function(ProductDetailDeleted value)? deleted,
    TResult? Function(ProductDetailError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailInitial value)? initial,
    TResult Function(ProductDetailLoading value)? loading,
    TResult Function(ProductDetailLoaded value)? loaded,
    TResult Function(ProductDetailDeleted value)? deleted,
    TResult Function(ProductDetailError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductDetailLoaded implements ProductDetailState {
  const factory ProductDetailLoaded({
    required final Product product,
    final bool isUpdating,
    final bool isDeleting,
    final bool updateSuccess,
    final String? updateError,
    final String? deleteError,
  }) = _$ProductDetailLoadedImpl;

  Product get product;
  bool get isUpdating;
  bool get isDeleting;
  bool get updateSuccess;
  String? get updateError;
  String? get deleteError;

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailLoadedImplCopyWith<_$ProductDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailDeletedImplCopyWith<$Res> {
  factory _$$ProductDetailDeletedImplCopyWith(
    _$ProductDetailDeletedImpl value,
    $Res Function(_$ProductDetailDeletedImpl) then,
  ) = __$$ProductDetailDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailDeletedImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailDeletedImpl>
    implements _$$ProductDetailDeletedImplCopyWith<$Res> {
  __$$ProductDetailDeletedImplCopyWithImpl(
    _$ProductDetailDeletedImpl _value,
    $Res Function(_$ProductDetailDeletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductDetailDeletedImpl implements ProductDetailDeleted {
  const _$ProductDetailDeletedImpl();

  @override
  String toString() {
    return 'ProductDetailState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailInitial value) initial,
    required TResult Function(ProductDetailLoading value) loading,
    required TResult Function(ProductDetailLoaded value) loaded,
    required TResult Function(ProductDetailDeleted value) deleted,
    required TResult Function(ProductDetailError value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailInitial value)? initial,
    TResult? Function(ProductDetailLoading value)? loading,
    TResult? Function(ProductDetailLoaded value)? loaded,
    TResult? Function(ProductDetailDeleted value)? deleted,
    TResult? Function(ProductDetailError value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailInitial value)? initial,
    TResult Function(ProductDetailLoading value)? loading,
    TResult Function(ProductDetailLoaded value)? loaded,
    TResult Function(ProductDetailDeleted value)? deleted,
    TResult Function(ProductDetailError value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class ProductDetailDeleted implements ProductDetailState {
  const factory ProductDetailDeleted() = _$ProductDetailDeletedImpl;
}

/// @nodoc
abstract class _$$ProductDetailErrorImplCopyWith<$Res> {
  factory _$$ProductDetailErrorImplCopyWith(
    _$ProductDetailErrorImpl value,
    $Res Function(_$ProductDetailErrorImpl) then,
  ) = __$$ProductDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProductDetailErrorImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailErrorImpl>
    implements _$$ProductDetailErrorImplCopyWith<$Res> {
  __$$ProductDetailErrorImplCopyWithImpl(
    _$ProductDetailErrorImpl _value,
    $Res Function(_$ProductDetailErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProductDetailErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailErrorImpl implements ProductDetailError {
  const _$ProductDetailErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductDetailState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailErrorImplCopyWith<_$ProductDetailErrorImpl> get copyWith =>
      __$$ProductDetailErrorImplCopyWithImpl<_$ProductDetailErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      Product product,
      bool isUpdating,
      bool isDeleting,
      bool updateSuccess,
      String? updateError,
      String? deleteError,
    )?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailInitial value) initial,
    required TResult Function(ProductDetailLoading value) loading,
    required TResult Function(ProductDetailLoaded value) loaded,
    required TResult Function(ProductDetailDeleted value) deleted,
    required TResult Function(ProductDetailError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailInitial value)? initial,
    TResult? Function(ProductDetailLoading value)? loading,
    TResult? Function(ProductDetailLoaded value)? loaded,
    TResult? Function(ProductDetailDeleted value)? deleted,
    TResult? Function(ProductDetailError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailInitial value)? initial,
    TResult Function(ProductDetailLoading value)? loading,
    TResult Function(ProductDetailLoaded value)? loaded,
    TResult Function(ProductDetailDeleted value)? deleted,
    TResult Function(ProductDetailError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductDetailError implements ProductDetailState {
  const factory ProductDetailError({required final String message}) =
      _$ProductDetailErrorImpl;

  String get message;

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailErrorImplCopyWith<_$ProductDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
