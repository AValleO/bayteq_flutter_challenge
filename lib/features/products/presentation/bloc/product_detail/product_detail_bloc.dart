import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
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
  }) : super(ProductDetailState.initial(
    productForm: ProductForm(
      productTitle: ProductTitle.pure(),
      productDescription: ProductDescription.pure(),
      productPrice: ProductPrice.pure(),
      productCategory: ProductCategory.pure(),
    ),
    productId: 0,
  )) {
    on<LoadProductDetail>(_onLoadProductDetail);
    on<UpdateProductDetail>(_onUpdateProductDetail);
    on<DeleteProductDetail>(_onDeleteProductDetail);
    on<ProductDetailTitleChanged>(_onProductTitleChanged);
    on<ProductDetailDescriptionChanged>(_onProductDescriptionChanged);
    on<ProductDetailPriceChanged>(_onProductPriceChanged);
    on<ProductDetailCategoryChanged>(_onProductCategoryChanged);
  }

  Future<void> _onLoadProductDetail(
    LoadProductDetail event,
    Emitter<ProductDetailState> emit,
  ) async {
    emit(const ProductDetailState.loading());
    
    final result = await getProductByIdUseCase(event.productId);
    
    result.fold(
      (failure) => emit(ProductDetailState.error(message: failure.message)),
      (product) => emit(ProductDetailState.loaded(
        productForm: ProductForm(
          productTitle: ProductTitle.dirty(product.title),
          productDescription: ProductDescription.dirty(product.description),
          productPrice: ProductPrice.dirty(product.price),
          productCategory: ProductCategory.dirty(product.category),
        ),
        productId: product.id,
        product: product,
      )),
    );
  }

  Future<void> _onUpdateProductDetail(
    UpdateProductDetail event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    // Valido si el formulario es válido antes de actualizar
    if (!currentState.productForm.isValid) {
      emit(ProductDetailState.loaded(
        productForm: currentState.productForm.copyWith(
          submissionStatus: FormzSubmissionStatus.failure,
          errorMessage: 'Por favor, corrige los errores en el formulario.',
          hasSubmittedOnce: true,
        ),
        productId: currentState.productId,
        product: currentState.product,
      ));
      return;
    }

    emit(ProductDetailState.loaded(
      productForm: currentState.productForm.copyWith(
        submissionStatus: FormzSubmissionStatus.inProgress,
        hasSubmittedOnce: true,
      ),
      productId: currentState.productId,
      product: currentState.product,
    ));

    // Construyo el producto actualizado
    final updatedProduct = Product(
      id: currentState.productId,
      title: currentState.productForm.productTitle.value,
      description: currentState.productForm.productDescription.value,
      price: currentState.productForm.productPrice.value,
      category: currentState.productForm.productCategory.value,
      thumbnail: currentState.product.thumbnail,
      rating: currentState.product.rating,
    );

    final result = await updateProductUseCase(updatedProduct);

    result.fold(
      (failure) => emit(ProductDetailState.loaded(
        productForm: currentState.productForm.copyWith(
          submissionStatus: FormzSubmissionStatus.failure,
          errorMessage: failure.message,
        ),
        productId: currentState.productId,
        product: currentState.product,
      )),
      (updatedProduct) => emit(ProductDetailState.loaded(
        productForm: currentState.productForm.copyWith(
          submissionStatus: FormzSubmissionStatus.success,
        ),
        productId: currentState.productId,
        product: updatedProduct,
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
      productForm: currentState.productForm.copyWith(
        submissionStatus: FormzSubmissionStatus.inProgress,
        hasSubmittedOnce: true,
      ),
      productId: currentState.productId,
      product: currentState.product,
    ));

    final result = await deleteProductUseCase(currentState.productId);

    result.fold(
      (failure) => emit(ProductDetailState.loaded(
        productForm: currentState.productForm.copyWith(
          submissionStatus: FormzSubmissionStatus.failure,
          errorMessage: failure.message,
          hasSubmittedOnce: true,
        ),
        productId: currentState.productId,
        product: currentState.product,
      )),
      (_) => emit(const ProductDetailState.deleted()),
    );
  }

  Future<void> _onProductTitleChanged(
    ProductDetailTitleChanged event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    final updatedForm = currentState.productForm.copyWith(
      productTitle: ProductTitle.dirty(event.title),
    );

    emit(ProductDetailState.loaded(
      productForm: updatedForm,
      productId: currentState.productId,
      product: currentState.product,
    ));
  }

  Future<void> _onProductDescriptionChanged(
    ProductDetailDescriptionChanged event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    final updatedForm = currentState.productForm.copyWith(
      productDescription: ProductDescription.dirty(event.description),
    );

    emit(ProductDetailState.loaded(
      productForm: updatedForm,
      productId: currentState.productId,
      product: currentState.product,
    ));
  }

  Future<void> _onProductPriceChanged(
    ProductDetailPriceChanged event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    final updatedForm = currentState.productForm.copyWith(
      productPrice: ProductPrice.dirty(event.price),
    );

    emit(ProductDetailState.loaded(
      productForm: updatedForm,
      productId: currentState.productId,
      product: currentState.product,
    ));
  }

  Future<void> _onProductCategoryChanged(
    ProductDetailCategoryChanged event,
    Emitter<ProductDetailState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ProductDetailLoaded) return;

    final updatedForm = currentState.productForm.copyWith(
      productCategory: ProductCategory.dirty(event.category),
    );

    emit(ProductDetailState.loaded(
      productForm: updatedForm,
      productId: currentState.productId,
      product: currentState.product,
    ));
  }
}
