part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = ProductDetailInitial;
  const factory ProductDetailState.loading() = ProductDetailLoading;
  const factory ProductDetailState.loaded({
    required Product product,
    @Default(false) bool isUpdating,
    @Default(false) bool isDeleting,
    @Default(false) bool updateSuccess,
    String? updateError,
    String? deleteError,
  }) = ProductDetailLoaded;
  const factory ProductDetailState.deleted() = ProductDetailDeleted;
  const factory ProductDetailState.error({required String message}) = ProductDetailError;
}
