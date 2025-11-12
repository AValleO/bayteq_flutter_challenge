part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadFirstPage() = LoadFirstPage;
  const factory ProductEvent.loadNextPage() = LoadNextPage;
  const factory ProductEvent.refreshProducts() = RefreshProducts;
  const factory ProductEvent.retryPagination() = RetryPagination;
}