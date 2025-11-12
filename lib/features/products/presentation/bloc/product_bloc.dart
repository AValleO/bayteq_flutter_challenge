import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProducts getProductsUseCase;
  
  ProductBloc({required this.getProductsUseCase}) : super(ProductInitial()) {
    on<LoadFirstPage>(onLoadFirstPage);
  }

  onLoadFirstPage(LoadFirstPage event, Emitter<ProductState> emit) async{
    // Cargar la primera página de productos
    final paginationParams = PaginationParams(limit: 20, skip: 0);
    final result = await getProductsUseCase(paginationParams);
    result.fold(
      (failure) {
        emit(ProductState.error(message: failure.message));
      },
      (paginatedProducts) {
        emit(ProductState.loaded(
          paginatedProducts: paginatedProducts,
          allProducts: paginatedProducts.products,
        ));
      },
    );
  }

  onLoadNextPage(LoadNextPage event, Emitter<ProductState> emit) async{
    // Cargar la siguiente página de productos
    final currentState = state;
    if (currentState is! ProductLoaded) return;
    final currentProducts = currentState.paginatedProducts;
    if(!currentProducts.hasMore) return;
    final paginationParams = PaginationParams(
      limit: currentProducts.limit,
      skip: currentProducts.skip + 1,
    );
    final result = await getProductsUseCase(paginationParams);
    result.fold(
      (failure) {
        emit(ProductState.error(message: failure.message));
      },
      (paginatedProducts) {
        final allProducts = List<Product>.from(currentState.allProducts)
          ..addAll(paginatedProducts.products);
        emit(ProductState.loaded(
          paginatedProducts: paginatedProducts,
          allProducts: allProducts,
        ));
      },
    );
  }
}
