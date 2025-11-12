import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProducts getProductsUseCase;
  
  ProductBloc({required this.getProductsUseCase}) : super(const ProductState.initial()) {
    on<LoadFirstPage>(onLoadFirstPage);
    on<LoadNextPage>(onLoadNextPage);
    on<RefreshProducts>(onRefreshProducts);
    on<RetryPagination>(onRetryPagination);
  }

  onLoadFirstPage(LoadFirstPage event, Emitter<ProductState> emit) async{
    // Cargar la primera página de productos
    emit(const ProductState.loading());
    final paginationParams = PaginationParams(limit: 10, skip: 0);
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
    if (currentState is! ProductLoaded) {
      emit(const ProductState.error(message: 'No es posible cargar más productos'));
      return;
    }
    
    final currentProducts = currentState.paginatedProducts;
    if(!currentProducts.hasMore) return;
    
    // Emitir estado de carga para paginación
    emit(currentState.copyWith(isLoadingMore: true, paginationError: null));
    
    final paginationParams = PaginationParams(
      limit: currentProducts.limit,
      skip: currentProducts.skip + currentProducts.limit,
    );
    
    final result = await getProductsUseCase(paginationParams);
    result.fold(
      (failure) {
        // Mantengo los productos actuales y solo muestro el error de paginación
        emit(currentState.copyWith(
          isLoadingMore: false,
          paginationError: failure.message,
        ));
      },
      (paginatedProducts) {
        final allProducts = List<Product>.from(currentState.allProducts)
          ..addAll(paginatedProducts.products);
        emit(ProductState.loaded(
          paginatedProducts: paginatedProducts,
          allProducts: allProducts,
          isLoadingMore: false,
          paginationError: null,
        ));
      },
    );
  }

  onRefreshProducts(RefreshProducts event, Emitter<ProductState> emit) async {
    // Evento para refrescar la lista de productos (pull-to-refresh)
    emit(const ProductState.loading());
    final paginationParams = PaginationParams(limit: 10, skip: 0);
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

  onRetryPagination(RetryPagination event, Emitter<ProductState> emit) async {
    // Reintento cargar la última página fallida
    final currentState = state;
    if (currentState is! ProductLoaded) return;
    
    final currentProducts = currentState.paginatedProducts;
    if(!currentProducts.hasMore) return;
    
    // Emito estado de carga para paginación
    emit(currentState.copyWith(isLoadingMore: true, paginationError: null));
    
    final paginationParams = PaginationParams(
      limit: currentProducts.limit,
      skip: currentProducts.skip + currentProducts.limit,
    );
    
    final result = await getProductsUseCase(paginationParams);
    result.fold(
      (failure) {
        emit(currentState.copyWith(
          isLoadingMore: false,
          paginationError: failure.message,
        ));
      },
      (paginatedProducts) {
        final allProducts = List<Product>.from(currentState.allProducts)
          ..addAll(paginatedProducts.products);
        emit(ProductState.loaded(
          paginatedProducts: paginatedProducts,
          allProducts: allProducts,
          isLoadingMore: false,
          paginationError: null,
        ));
      },
    );
  }
}
