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
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
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
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return loadProductDetail(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return loadProductDetail?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
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
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return loadProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return loadProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
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
}

/// @nodoc

class _$UpdateProductDetailImpl implements UpdateProductDetail {
  const _$UpdateProductDetailImpl();

  @override
  String toString() {
    return 'ProductDetailEvent.updateProductDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return updateProductDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return updateProductDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) {
    if (updateProductDetail != null) {
      return updateProductDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return updateProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return updateProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
    required TResult orElse(),
  }) {
    if (updateProductDetail != null) {
      return updateProductDetail(this);
    }
    return orElse();
  }
}

abstract class UpdateProductDetail implements ProductDetailEvent {
  const factory UpdateProductDetail() = _$UpdateProductDetailImpl;
}

/// @nodoc
abstract class _$$DeleteProductDetailImplCopyWith<$Res> {
  factory _$$DeleteProductDetailImplCopyWith(
    _$DeleteProductDetailImpl value,
    $Res Function(_$DeleteProductDetailImpl) then,
  ) = __$$DeleteProductDetailImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$DeleteProductDetailImpl implements DeleteProductDetail {
  const _$DeleteProductDetailImpl();

  @override
  String toString() {
    return 'ProductDetailEvent.deleteProductDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return deleteProductDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return deleteProductDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) {
    if (deleteProductDetail != null) {
      return deleteProductDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return deleteProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return deleteProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
    required TResult orElse(),
  }) {
    if (deleteProductDetail != null) {
      return deleteProductDetail(this);
    }
    return orElse();
  }
}

abstract class DeleteProductDetail implements ProductDetailEvent {
  const factory DeleteProductDetail() = _$DeleteProductDetailImpl;
}

/// @nodoc
abstract class _$$ProductDetailTitleChangedImplCopyWith<$Res> {
  factory _$$ProductDetailTitleChangedImplCopyWith(
    _$ProductDetailTitleChangedImpl value,
    $Res Function(_$ProductDetailTitleChangedImpl) then,
  ) = __$$ProductDetailTitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ProductDetailTitleChangedImplCopyWithImpl<$Res>
    extends
        _$ProductDetailEventCopyWithImpl<$Res, _$ProductDetailTitleChangedImpl>
    implements _$$ProductDetailTitleChangedImplCopyWith<$Res> {
  __$$ProductDetailTitleChangedImplCopyWithImpl(
    _$ProductDetailTitleChangedImpl _value,
    $Res Function(_$ProductDetailTitleChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null}) {
    return _then(
      _$ProductDetailTitleChangedImpl(
        null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailTitleChangedImpl implements ProductDetailTitleChanged {
  const _$ProductDetailTitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'ProductDetailEvent.productTitleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailTitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailTitleChangedImplCopyWith<_$ProductDetailTitleChangedImpl>
  get copyWith =>
      __$$ProductDetailTitleChangedImplCopyWithImpl<
        _$ProductDetailTitleChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return productTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return productTitleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productTitleChanged != null) {
      return productTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return productTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return productTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productTitleChanged != null) {
      return productTitleChanged(this);
    }
    return orElse();
  }
}

abstract class ProductDetailTitleChanged implements ProductDetailEvent {
  const factory ProductDetailTitleChanged(final String title) =
      _$ProductDetailTitleChangedImpl;

  String get title;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailTitleChangedImplCopyWith<_$ProductDetailTitleChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailDescriptionChangedImplCopyWith<$Res> {
  factory _$$ProductDetailDescriptionChangedImplCopyWith(
    _$ProductDetailDescriptionChangedImpl value,
    $Res Function(_$ProductDetailDescriptionChangedImpl) then,
  ) = __$$ProductDetailDescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$ProductDetailDescriptionChangedImplCopyWithImpl<$Res>
    extends
        _$ProductDetailEventCopyWithImpl<
          $Res,
          _$ProductDetailDescriptionChangedImpl
        >
    implements _$$ProductDetailDescriptionChangedImplCopyWith<$Res> {
  __$$ProductDetailDescriptionChangedImplCopyWithImpl(
    _$ProductDetailDescriptionChangedImpl _value,
    $Res Function(_$ProductDetailDescriptionChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? description = null}) {
    return _then(
      _$ProductDetailDescriptionChangedImpl(
        null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailDescriptionChangedImpl
    implements ProductDetailDescriptionChanged {
  const _$ProductDetailDescriptionChangedImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'ProductDetailEvent.productDescriptionChanged(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDescriptionChangedImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailDescriptionChangedImplCopyWith<
    _$ProductDetailDescriptionChangedImpl
  >
  get copyWith =>
      __$$ProductDetailDescriptionChangedImplCopyWithImpl<
        _$ProductDetailDescriptionChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return productDescriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return productDescriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productDescriptionChanged != null) {
      return productDescriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return productDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return productDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productDescriptionChanged != null) {
      return productDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class ProductDetailDescriptionChanged implements ProductDetailEvent {
  const factory ProductDetailDescriptionChanged(final String description) =
      _$ProductDetailDescriptionChangedImpl;

  String get description;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailDescriptionChangedImplCopyWith<
    _$ProductDetailDescriptionChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailPriceChangedImplCopyWith<$Res> {
  factory _$$ProductDetailPriceChangedImplCopyWith(
    _$ProductDetailPriceChangedImpl value,
    $Res Function(_$ProductDetailPriceChangedImpl) then,
  ) = __$$ProductDetailPriceChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$ProductDetailPriceChangedImplCopyWithImpl<$Res>
    extends
        _$ProductDetailEventCopyWithImpl<$Res, _$ProductDetailPriceChangedImpl>
    implements _$$ProductDetailPriceChangedImplCopyWith<$Res> {
  __$$ProductDetailPriceChangedImplCopyWithImpl(
    _$ProductDetailPriceChangedImpl _value,
    $Res Function(_$ProductDetailPriceChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = null}) {
    return _then(
      _$ProductDetailPriceChangedImpl(
        null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailPriceChangedImpl implements ProductDetailPriceChanged {
  const _$ProductDetailPriceChangedImpl(this.price);

  @override
  final double price;

  @override
  String toString() {
    return 'ProductDetailEvent.productPriceChanged(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailPriceChangedImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailPriceChangedImplCopyWith<_$ProductDetailPriceChangedImpl>
  get copyWith =>
      __$$ProductDetailPriceChangedImplCopyWithImpl<
        _$ProductDetailPriceChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return productPriceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return productPriceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productPriceChanged != null) {
      return productPriceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return productPriceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return productPriceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productPriceChanged != null) {
      return productPriceChanged(this);
    }
    return orElse();
  }
}

abstract class ProductDetailPriceChanged implements ProductDetailEvent {
  const factory ProductDetailPriceChanged(final double price) =
      _$ProductDetailPriceChangedImpl;

  double get price;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailPriceChangedImplCopyWith<_$ProductDetailPriceChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailCategoryChangedImplCopyWith<$Res> {
  factory _$$ProductDetailCategoryChangedImplCopyWith(
    _$ProductDetailCategoryChangedImpl value,
    $Res Function(_$ProductDetailCategoryChangedImpl) then,
  ) = __$$ProductDetailCategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$ProductDetailCategoryChangedImplCopyWithImpl<$Res>
    extends
        _$ProductDetailEventCopyWithImpl<
          $Res,
          _$ProductDetailCategoryChangedImpl
        >
    implements _$$ProductDetailCategoryChangedImplCopyWith<$Res> {
  __$$ProductDetailCategoryChangedImplCopyWithImpl(
    _$ProductDetailCategoryChangedImpl _value,
    $Res Function(_$ProductDetailCategoryChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null}) {
    return _then(
      _$ProductDetailCategoryChangedImpl(
        null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailCategoryChangedImpl
    implements ProductDetailCategoryChanged {
  const _$ProductDetailCategoryChangedImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'ProductDetailEvent.productCategoryChanged(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailCategoryChangedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailCategoryChangedImplCopyWith<
    _$ProductDetailCategoryChangedImpl
  >
  get copyWith =>
      __$$ProductDetailCategoryChangedImplCopyWithImpl<
        _$ProductDetailCategoryChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) loadProductDetail,
    required TResult Function() updateProductDetail,
    required TResult Function() deleteProductDetail,
    required TResult Function(String title) productTitleChanged,
    required TResult Function(String description) productDescriptionChanged,
    required TResult Function(double price) productPriceChanged,
    required TResult Function(String category) productCategoryChanged,
  }) {
    return productCategoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? loadProductDetail,
    TResult? Function()? updateProductDetail,
    TResult? Function()? deleteProductDetail,
    TResult? Function(String title)? productTitleChanged,
    TResult? Function(String description)? productDescriptionChanged,
    TResult? Function(double price)? productPriceChanged,
    TResult? Function(String category)? productCategoryChanged,
  }) {
    return productCategoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? loadProductDetail,
    TResult Function()? updateProductDetail,
    TResult Function()? deleteProductDetail,
    TResult Function(String title)? productTitleChanged,
    TResult Function(String description)? productDescriptionChanged,
    TResult Function(double price)? productPriceChanged,
    TResult Function(String category)? productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productCategoryChanged != null) {
      return productCategoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProductDetail value) loadProductDetail,
    required TResult Function(UpdateProductDetail value) updateProductDetail,
    required TResult Function(DeleteProductDetail value) deleteProductDetail,
    required TResult Function(ProductDetailTitleChanged value)
    productTitleChanged,
    required TResult Function(ProductDetailDescriptionChanged value)
    productDescriptionChanged,
    required TResult Function(ProductDetailPriceChanged value)
    productPriceChanged,
    required TResult Function(ProductDetailCategoryChanged value)
    productCategoryChanged,
  }) {
    return productCategoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProductDetail value)? loadProductDetail,
    TResult? Function(UpdateProductDetail value)? updateProductDetail,
    TResult? Function(DeleteProductDetail value)? deleteProductDetail,
    TResult? Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult? Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult? Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult? Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
  }) {
    return productCategoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProductDetail value)? loadProductDetail,
    TResult Function(UpdateProductDetail value)? updateProductDetail,
    TResult Function(DeleteProductDetail value)? deleteProductDetail,
    TResult Function(ProductDetailTitleChanged value)? productTitleChanged,
    TResult Function(ProductDetailDescriptionChanged value)?
    productDescriptionChanged,
    TResult Function(ProductDetailPriceChanged value)? productPriceChanged,
    TResult Function(ProductDetailCategoryChanged value)?
    productCategoryChanged,
    required TResult orElse(),
  }) {
    if (productCategoryChanged != null) {
      return productCategoryChanged(this);
    }
    return orElse();
  }
}

abstract class ProductDetailCategoryChanged implements ProductDetailEvent {
  const factory ProductDetailCategoryChanged(final String category) =
      _$ProductDetailCategoryChangedImpl;

  String get category;

  /// Create a copy of ProductDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailCategoryChangedImplCopyWith<
    _$ProductDetailCategoryChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductForm productForm, int productId) initial,
    required TResult Function() loading,
    required TResult Function(
      ProductForm productForm,
      int productId,
      Product product,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductForm productForm, int productId)? initial,
    TResult? Function()? loading,
    TResult? Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductForm productForm, int productId)? initial,
    TResult Function()? loading,
    TResult Function(ProductForm productForm, int productId, Product product)?
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
  @useResult
  $Res call({ProductForm productForm, int productId});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productForm = null, Object? productId = null}) {
    return _then(
      _$ProductDetailInitialImpl(
        productForm: null == productForm
            ? _value.productForm
            : productForm // ignore: cast_nullable_to_non_nullable
                  as ProductForm,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailInitialImpl implements ProductDetailInitial {
  const _$ProductDetailInitialImpl({
    required this.productForm,
    required this.productId,
  });

  @override
  final ProductForm productForm;
  @override
  final int productId;

  @override
  String toString() {
    return 'ProductDetailState.initial(productForm: $productForm, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailInitialImpl &&
            (identical(other.productForm, productForm) ||
                other.productForm == productForm) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productForm, productId);

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailInitialImplCopyWith<_$ProductDetailInitialImpl>
  get copyWith =>
      __$$ProductDetailInitialImplCopyWithImpl<_$ProductDetailInitialImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductForm productForm, int productId) initial,
    required TResult Function() loading,
    required TResult Function(
      ProductForm productForm,
      int productId,
      Product product,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return initial(productForm, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductForm productForm, int productId)? initial,
    TResult? Function()? loading,
    TResult? Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return initial?.call(productForm, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductForm productForm, int productId)? initial,
    TResult Function()? loading,
    TResult Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(productForm, productId);
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
  const factory ProductDetailInitial({
    required final ProductForm productForm,
    required final int productId,
  }) = _$ProductDetailInitialImpl;

  ProductForm get productForm;
  int get productId;

  /// Create a copy of ProductDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailInitialImplCopyWith<_$ProductDetailInitialImpl>
  get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(ProductForm productForm, int productId) initial,
    required TResult Function() loading,
    required TResult Function(
      ProductForm productForm,
      int productId,
      Product product,
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
    TResult? Function(ProductForm productForm, int productId)? initial,
    TResult? Function()? loading,
    TResult? Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductForm productForm, int productId)? initial,
    TResult Function()? loading,
    TResult Function(ProductForm productForm, int productId, Product product)?
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
  $Res call({ProductForm productForm, int productId, Product product});
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
    Object? productForm = null,
    Object? productId = null,
    Object? product = null,
  }) {
    return _then(
      _$ProductDetailLoadedImpl(
        productForm: null == productForm
            ? _value.productForm
            : productForm // ignore: cast_nullable_to_non_nullable
                  as ProductForm,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
        product: null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                  as Product,
      ),
    );
  }
}

/// @nodoc

class _$ProductDetailLoadedImpl implements ProductDetailLoaded {
  const _$ProductDetailLoadedImpl({
    required this.productForm,
    required this.productId,
    required this.product,
  });

  @override
  final ProductForm productForm;
  @override
  final int productId;
  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailState.loaded(productForm: $productForm, productId: $productId, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailLoadedImpl &&
            (identical(other.productForm, productForm) ||
                other.productForm == productForm) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productForm, productId, product);

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
    required TResult Function(ProductForm productForm, int productId) initial,
    required TResult Function() loading,
    required TResult Function(
      ProductForm productForm,
      int productId,
      Product product,
    )
    loaded,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return loaded(productForm, productId, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductForm productForm, int productId)? initial,
    TResult? Function()? loading,
    TResult? Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(productForm, productId, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductForm productForm, int productId)? initial,
    TResult Function()? loading,
    TResult Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(productForm, productId, product);
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
    required final ProductForm productForm,
    required final int productId,
    required final Product product,
  }) = _$ProductDetailLoadedImpl;

  ProductForm get productForm;
  int get productId;
  Product get product;

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
    required TResult Function(ProductForm productForm, int productId) initial,
    required TResult Function() loading,
    required TResult Function(
      ProductForm productForm,
      int productId,
      Product product,
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
    TResult? Function(ProductForm productForm, int productId)? initial,
    TResult? Function()? loading,
    TResult? Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductForm productForm, int productId)? initial,
    TResult Function()? loading,
    TResult Function(ProductForm productForm, int productId, Product product)?
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
    required TResult Function(ProductForm productForm, int productId) initial,
    required TResult Function() loading,
    required TResult Function(
      ProductForm productForm,
      int productId,
      Product product,
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
    TResult? Function(ProductForm productForm, int productId)? initial,
    TResult? Function()? loading,
    TResult? Function(ProductForm productForm, int productId, Product product)?
    loaded,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductForm productForm, int productId)? initial,
    TResult Function()? loading,
    TResult Function(ProductForm productForm, int productId, Product product)?
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
