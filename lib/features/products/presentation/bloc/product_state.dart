part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitial;
  const factory ProductState.loaded({
    required PaginatedProducts paginatedProducts,
    required List<Product> allProducts,
  }) = ProductLoaded;
  const factory ProductState.error({required String message}) = ProductError;
}
