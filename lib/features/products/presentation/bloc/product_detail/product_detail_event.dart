part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.loadProductDetail(int productId) = LoadProductDetail;
  const factory ProductDetailEvent.updateProductDetail(Product product) = UpdateProductDetail;
  const factory ProductDetailEvent.deleteProductDetail(int productId) = DeleteProductDetail;
}
