part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitial;
  const factory ProductState.loading() = ProductLoading;
  const factory ProductState.loaded({
    required PaginatedProducts paginatedProducts,
    required List<Product> allProducts,
    @Default(false) bool isLoadingMore,
    String? paginationError,
  }) = ProductLoaded;
  const factory ProductState.error({required String message}) = ProductError;
}
