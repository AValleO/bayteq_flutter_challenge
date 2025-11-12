import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final GetProductById getProductByIdUseCase;
  final UpdateProduct updateProductUseCase;
  final DeleteProduct deleteProductUseCase;

  ProductDetailBloc({
    required this.getProductByIdUseCase,
    required this.updateProductUseCase,
    required this.deleteProductUseCase,
  }) : super(const ProductDetailState.initial()) {
    on<LoadProductDetail>(_onLoadProductDetail);
    on<UpdateProductDetail>(_onUpdateProductDetail);
    on<DeleteProductDetail>(_onDeleteProductDetail);
  }

  Future<void> _onLoadProductDetail(
    LoadProductDetail event,
    Emitter<ProductDetailState> emit,
  ) async {
    emit(const ProductDetailState.loading());
    
    final result = await getProductByIdUseCase(event.productId);
    
    result.fold(
      (failure) => emit(ProductDetailState.error(message: failure.message)),
      (product) => emit(ProductDetailState.loaded(product: product)),
    );
  }

  Future<void> _onUpdateProductDetail(
    UpdateProductDetail event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    emit(ProductDetailState.loaded(
      product: currentState.product,
      isUpdating: true,
    ));

    final result = await updateProductUseCase(event.product);

    result.fold(
      (failure) => emit(ProductDetailState.loaded(
        product: currentState.product,
        isUpdating: false,
        updateError: failure.message,
      )),
      (updatedProduct) => emit(ProductDetailState.loaded(
        product: updatedProduct,
        isUpdating: false,
        updateSuccess: true,
      )),
    );
  }

  Future<void> _onDeleteProductDetail(
    DeleteProductDetail event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    emit(ProductDetailState.loaded(
      product: currentState.product,
      isDeleting: true,
    ));

    final result = await deleteProductUseCase(event.productId);

    result.fold(
      (failure) => emit(ProductDetailState.loaded(
        product: currentState.product,
        isDeleting: false,
        deleteError: failure.message,
      )),
      (_) => emit(const ProductDetailState.deleted()),
    );
  }
}
