// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFirstPage,
    required TResult Function() loadNextPage,
    required TResult Function() refreshProducts,
    required TResult Function() retryPagination,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFirstPage,
    TResult? Function()? loadNextPage,
    TResult? Function()? refreshProducts,
    TResult? Function()? retryPagination,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFirstPage,
    TResult Function()? loadNextPage,
    TResult Function()? refreshProducts,
    TResult Function()? retryPagination,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshProducts value) refreshProducts,
    required TResult Function(RetryPagination value) retryPagination,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshProducts value)? refreshProducts,
    TResult? Function(RetryPagination value)? retryPagination,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshProducts value)? refreshProducts,
    TResult Function(RetryPagination value)? retryPagination,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
    ProductEvent value,
    $Res Function(ProductEvent) then,
  ) = _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFirstPageImplCopyWith<$Res> {
  factory _$$LoadFirstPageImplCopyWith(
    _$LoadFirstPageImpl value,
    $Res Function(_$LoadFirstPageImpl) then,
  ) = __$$LoadFirstPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFirstPageImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadFirstPageImpl>
    implements _$$LoadFirstPageImplCopyWith<$Res> {
  __$$LoadFirstPageImplCopyWithImpl(
    _$LoadFirstPageImpl _value,
    $Res Function(_$LoadFirstPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFirstPageImpl implements LoadFirstPage {
  const _$LoadFirstPageImpl();

  @override
  String toString() {
    return 'ProductEvent.loadFirstPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFirstPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFirstPage,
    required TResult Function() loadNextPage,
    required TResult Function() refreshProducts,
    required TResult Function() retryPagination,
  }) {
    return loadFirstPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFirstPage,
    TResult? Function()? loadNextPage,
    TResult? Function()? refreshProducts,
    TResult? Function()? retryPagination,
  }) {
    return loadFirstPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFirstPage,
    TResult Function()? loadNextPage,
    TResult Function()? refreshProducts,
    TResult Function()? retryPagination,
    required TResult orElse(),
  }) {
    if (loadFirstPage != null) {
      return loadFirstPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshProducts value) refreshProducts,
    required TResult Function(RetryPagination value) retryPagination,
  }) {
    return loadFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshProducts value)? refreshProducts,
    TResult? Function(RetryPagination value)? retryPagination,
  }) {
    return loadFirstPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshProducts value)? refreshProducts,
    TResult Function(RetryPagination value)? retryPagination,
    required TResult orElse(),
  }) {
    if (loadFirstPage != null) {
      return loadFirstPage(this);
    }
    return orElse();
  }
}

abstract class LoadFirstPage implements ProductEvent {
  const factory LoadFirstPage() = _$LoadFirstPageImpl;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
    _$LoadNextPageImpl value,
    $Res Function(_$LoadNextPageImpl) then,
  ) = __$$LoadNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
    _$LoadNextPageImpl _value,
    $Res Function(_$LoadNextPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNextPageImpl implements LoadNextPage {
  const _$LoadNextPageImpl();

  @override
  String toString() {
    return 'ProductEvent.loadNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFirstPage,
    required TResult Function() loadNextPage,
    required TResult Function() refreshProducts,
    required TResult Function() retryPagination,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFirstPage,
    TResult? Function()? loadNextPage,
    TResult? Function()? refreshProducts,
    TResult? Function()? retryPagination,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFirstPage,
    TResult Function()? loadNextPage,
    TResult Function()? refreshProducts,
    TResult Function()? retryPagination,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshProducts value) refreshProducts,
    required TResult Function(RetryPagination value) retryPagination,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshProducts value)? refreshProducts,
    TResult? Function(RetryPagination value)? retryPagination,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshProducts value)? refreshProducts,
    TResult Function(RetryPagination value)? retryPagination,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class LoadNextPage implements ProductEvent {
  const factory LoadNextPage() = _$LoadNextPageImpl;
}

/// @nodoc
abstract class _$$RefreshProductsImplCopyWith<$Res> {
  factory _$$RefreshProductsImplCopyWith(
    _$RefreshProductsImpl value,
    $Res Function(_$RefreshProductsImpl) then,
  ) = __$$RefreshProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$RefreshProductsImpl>
    implements _$$RefreshProductsImplCopyWith<$Res> {
  __$$RefreshProductsImplCopyWithImpl(
    _$RefreshProductsImpl _value,
    $Res Function(_$RefreshProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshProductsImpl implements RefreshProducts {
  const _$RefreshProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.refreshProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFirstPage,
    required TResult Function() loadNextPage,
    required TResult Function() refreshProducts,
    required TResult Function() retryPagination,
  }) {
    return refreshProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFirstPage,
    TResult? Function()? loadNextPage,
    TResult? Function()? refreshProducts,
    TResult? Function()? retryPagination,
  }) {
    return refreshProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFirstPage,
    TResult Function()? loadNextPage,
    TResult Function()? refreshProducts,
    TResult Function()? retryPagination,
    required TResult orElse(),
  }) {
    if (refreshProducts != null) {
      return refreshProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshProducts value) refreshProducts,
    required TResult Function(RetryPagination value) retryPagination,
  }) {
    return refreshProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshProducts value)? refreshProducts,
    TResult? Function(RetryPagination value)? retryPagination,
  }) {
    return refreshProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshProducts value)? refreshProducts,
    TResult Function(RetryPagination value)? retryPagination,
    required TResult orElse(),
  }) {
    if (refreshProducts != null) {
      return refreshProducts(this);
    }
    return orElse();
  }
}

abstract class RefreshProducts implements ProductEvent {
  const factory RefreshProducts() = _$RefreshProductsImpl;
}

/// @nodoc
abstract class _$$RetryPaginationImplCopyWith<$Res> {
  factory _$$RetryPaginationImplCopyWith(
    _$RetryPaginationImpl value,
    $Res Function(_$RetryPaginationImpl) then,
  ) = __$$RetryPaginationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryPaginationImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$RetryPaginationImpl>
    implements _$$RetryPaginationImplCopyWith<$Res> {
  __$$RetryPaginationImplCopyWithImpl(
    _$RetryPaginationImpl _value,
    $Res Function(_$RetryPaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryPaginationImpl implements RetryPagination {
  const _$RetryPaginationImpl();

  @override
  String toString() {
    return 'ProductEvent.retryPagination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryPaginationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFirstPage,
    required TResult Function() loadNextPage,
    required TResult Function() refreshProducts,
    required TResult Function() retryPagination,
  }) {
    return retryPagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFirstPage,
    TResult? Function()? loadNextPage,
    TResult? Function()? refreshProducts,
    TResult? Function()? retryPagination,
  }) {
    return retryPagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFirstPage,
    TResult Function()? loadNextPage,
    TResult Function()? refreshProducts,
    TResult Function()? retryPagination,
    required TResult orElse(),
  }) {
    if (retryPagination != null) {
      return retryPagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshProducts value) refreshProducts,
    required TResult Function(RetryPagination value) retryPagination,
  }) {
    return retryPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshProducts value)? refreshProducts,
    TResult? Function(RetryPagination value)? retryPagination,
  }) {
    return retryPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshProducts value)? refreshProducts,
    TResult Function(RetryPagination value)? retryPagination,
    required TResult orElse(),
  }) {
    if (retryPagination != null) {
      return retryPagination(this);
    }
    return orElse();
  }
}

abstract class RetryPagination implements ProductEvent {
  const factory RetryPagination() = _$RetryPaginationImpl;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
    ProductState value,
    $Res Function(ProductState) then,
  ) = _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProductInitialImplCopyWith<$Res> {
  factory _$$ProductInitialImplCopyWith(
    _$ProductInitialImpl value,
    $Res Function(_$ProductInitialImpl) then,
  ) = __$$ProductInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductInitialImpl>
    implements _$$ProductInitialImplCopyWith<$Res> {
  __$$ProductInitialImplCopyWithImpl(
    _$ProductInitialImpl _value,
    $Res Function(_$ProductInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductInitialImpl implements ProductInitial {
  const _$ProductInitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )
    loaded,
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
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
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
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
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
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductInitial implements ProductState {
  const factory ProductInitial() = _$ProductInitialImpl;
}

/// @nodoc
abstract class _$$ProductLoadingImplCopyWith<$Res> {
  factory _$$ProductLoadingImplCopyWith(
    _$ProductLoadingImpl value,
    $Res Function(_$ProductLoadingImpl) then,
  ) = __$$ProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadingImpl>
    implements _$$ProductLoadingImplCopyWith<$Res> {
  __$$ProductLoadingImplCopyWithImpl(
    _$ProductLoadingImpl _value,
    $Res Function(_$ProductLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductLoadingImpl implements ProductLoading {
  const _$ProductLoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )
    loaded,
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
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
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
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
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
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements ProductState {
  const factory ProductLoading() = _$ProductLoadingImpl;
}

/// @nodoc
abstract class _$$ProductLoadedImplCopyWith<$Res> {
  factory _$$ProductLoadedImplCopyWith(
    _$ProductLoadedImpl value,
    $Res Function(_$ProductLoadedImpl) then,
  ) = __$$ProductLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    PaginatedProducts paginatedProducts,
    List<Product> allProducts,
    bool isLoadingMore,
    String? paginationError,
  });
}

/// @nodoc
class __$$ProductLoadedImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadedImpl>
    implements _$$ProductLoadedImplCopyWith<$Res> {
  __$$ProductLoadedImplCopyWithImpl(
    _$ProductLoadedImpl _value,
    $Res Function(_$ProductLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedProducts = null,
    Object? allProducts = null,
    Object? isLoadingMore = null,
    Object? paginationError = freezed,
  }) {
    return _then(
      _$ProductLoadedImpl(
        paginatedProducts: null == paginatedProducts
            ? _value.paginatedProducts
            : paginatedProducts // ignore: cast_nullable_to_non_nullable
                  as PaginatedProducts,
        allProducts: null == allProducts
            ? _value._allProducts
            : allProducts // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        paginationError: freezed == paginationError
            ? _value.paginationError
            : paginationError // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ProductLoadedImpl implements ProductLoaded {
  const _$ProductLoadedImpl({
    required this.paginatedProducts,
    required final List<Product> allProducts,
    this.isLoadingMore = false,
    this.paginationError,
  }) : _allProducts = allProducts;

  @override
  final PaginatedProducts paginatedProducts;
  final List<Product> _allProducts;
  @override
  List<Product> get allProducts {
    if (_allProducts is EqualUnmodifiableListView) return _allProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProducts);
  }

  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  final String? paginationError;

  @override
  String toString() {
    return 'ProductState.loaded(paginatedProducts: $paginatedProducts, allProducts: $allProducts, isLoadingMore: $isLoadingMore, paginationError: $paginationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedImpl &&
            (identical(other.paginatedProducts, paginatedProducts) ||
                other.paginatedProducts == paginatedProducts) &&
            const DeepCollectionEquality().equals(
              other._allProducts,
              _allProducts,
            ) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.paginationError, paginationError) ||
                other.paginationError == paginationError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    paginatedProducts,
    const DeepCollectionEquality().hash(_allProducts),
    isLoadingMore,
    paginationError,
  );

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      __$$ProductLoadedImplCopyWithImpl<_$ProductLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
      paginatedProducts,
      allProducts,
      isLoadingMore,
      paginationError,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
      paginatedProducts,
      allProducts,
      isLoadingMore,
      paginationError,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
        paginatedProducts,
        allProducts,
        isLoadingMore,
        paginationError,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductLoaded implements ProductState {
  const factory ProductLoaded({
    required final PaginatedProducts paginatedProducts,
    required final List<Product> allProducts,
    final bool isLoadingMore,
    final String? paginationError,
  }) = _$ProductLoadedImpl;

  PaginatedProducts get paginatedProducts;
  List<Product> get allProducts;
  bool get isLoadingMore;
  String? get paginationError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductErrorImplCopyWith<$Res> {
  factory _$$ProductErrorImplCopyWith(
    _$ProductErrorImpl value,
    $Res Function(_$ProductErrorImpl) then,
  ) = __$$ProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProductErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductErrorImpl>
    implements _$$ProductErrorImplCopyWith<$Res> {
  __$$ProductErrorImplCopyWithImpl(
    _$ProductErrorImpl _value,
    $Res Function(_$ProductErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProductErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProductErrorImpl implements ProductError {
  const _$ProductErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      __$$ProductErrorImplCopyWithImpl<_$ProductErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )
    loaded,
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
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
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
      PaginatedProducts paginatedProducts,
      List<Product> allProducts,
      bool isLoadingMore,
      String? paginationError,
    )?
    loaded,
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
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
    required TResult Function(ProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
    TResult? Function(ProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductError implements ProductState {
  const factory ProductError({required final String message}) =
      _$ProductErrorImpl;

  String get message;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
