part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.loadProductDetail(int productId) = LoadProductDetail;
  const factory ProductDetailEvent.updateProductDetail() = UpdateProductDetail;
  const factory ProductDetailEvent.deleteProductDetail() = DeleteProductDetail;
  const factory ProductDetailEvent.productTitleChanged(String title) = ProductDetailTitleChanged;
  const factory ProductDetailEvent.productDescriptionChanged(String description) = ProductDetailDescriptionChanged;
  const factory ProductDetailEvent.productPriceChanged(double price) = ProductDetailPriceChanged;
  const factory ProductDetailEvent.productCategoryChanged(String category) = ProductDetailCategoryChanged;
}
