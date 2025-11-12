part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial({
    required ProductForm productForm,
    required int productId,
  }) = ProductDetailInitial;
  const factory ProductDetailState.loading() = ProductDetailLoading;
  const factory ProductDetailState.loaded({
    required ProductForm productForm,
    required int productId,
  }) = ProductDetailLoaded;
  const factory ProductDetailState.deleted() = ProductDetailDeleted;
  const factory ProductDetailState.error({required String message}) = ProductDetailError;
}
