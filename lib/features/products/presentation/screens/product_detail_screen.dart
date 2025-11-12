import 'package:bayteq_flutter_challenge/core/di/injection_container.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:bayteq_flutter_challenge/features/products/presentation/widgets/inputs/product_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatelessWidget {
  final String? productId;

  const ProductDetailScreen({super.key, this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductDetailBloc>()
        ..add(ProductDetailEvent.loadProductDetail(int.parse(productId!))),
      child: const _ProductDetailView(),
    );
  }
}

class _ProductDetailView extends StatelessWidget {
  const _ProductDetailView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailBloc, ProductDetailState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (productForm, productId, product) {
            // Presento un SnackBar de éxito al actualizar
            if (productForm.submissionStatus == FormzSubmissionStatus.success) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Producto actualizado exitosamente'),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 2),
                ),
              );
              Navigator.of(context).pop();
            }
          },
          deleted: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Producto eliminado exitosamente'),
                backgroundColor: Colors.green,
              ),
            );
            context.pop();
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: Colors.red,
              ),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detalles del Producto'),
            actions: [
              state.maybeWhen(
                loaded: (productForm, productId, product) => IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: productForm.submissionStatus == FormzSubmissionStatus.inProgress
                      ? null
                      : () => _showDeleteDialog(context),
                ),
                orElse: () => const SizedBox.shrink(),
              ),
            ],
          ),
          body: state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (productForm, productId, product) => _buildLoadedBody(
              context,
              productForm,
              productId,
              product,
            ),
            error: (message) => _buildErrorBody(context, message),
            orElse: () => const SizedBox.shrink(),
          ),
          floatingActionButton: state.maybeWhen(
            loaded: (productForm, productId, product) => FloatingActionButton.extended(
              onPressed: productForm.submissionStatus == FormzSubmissionStatus.inProgress
                  ? null
                  : () => context
                      .read<ProductDetailBloc>()
                      .add(const ProductDetailEvent.updateProductDetail()),
              icon: productForm.submissionStatus == FormzSubmissionStatus.inProgress
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.save),
              label: Text(
                productForm.submissionStatus == FormzSubmissionStatus.inProgress
                    ? 'Guardando...'
                    : 'Guardar Cambios',
              ),
            ),
            orElse: () => null,
          ),
        );
      },
    );
  }

  Widget _buildLoadedBody(
    BuildContext context,
    ProductForm productForm,
    int productId,
    Product product,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Miniatura con imagen real
          _buildThumbnailSection(product.thumbnail),
          const SizedBox(height: 24),

          // Mostrar ID del producto
          _buildProductIdCard(productId),
          const SizedBox(height: 16),

          // Campos del formulario
          _buildFormSection(context, productForm),

          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildThumbnailSection(String thumbnailUrl) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: thumbnailUrl.isNotEmpty
            ? Image.network(
                thumbnailUrl,
                fit: BoxFit.fitHeight,
                width: double.infinity,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.broken_image,
                        size: 80,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Error al cargar la imagen',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  );
                },
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image_outlined,
                    size: 80,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Imagen no disponible',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildProductIdCard(int productId) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.tag, color: Colors.grey[700]),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ID del Producto',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '#$productId',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormSection(BuildContext context, ProductForm productForm) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Información del Producto',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Campo de título
            ProductInputField(
              label: 'Título del Producto',
              initialValue: productForm.productTitle.value,
              prefixIcon: Icons.title,
              enabled: productForm.submissionStatus != FormzSubmissionStatus.inProgress,
              errorText: productForm.hasSubmittedOnce &&
                      productForm.productTitle.isNotValid
                  ? productForm.productTitle.error?.toString()
                  : null,
              onChanged: (value) {
                context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.productTitleChanged(value),
                    );
              },
            ),
            const SizedBox(height: 16),

            // Campo de categoría
            ProductInputField(
              label: 'Categoría',
              initialValue: productForm.productCategory.value,
              prefixIcon: Icons.category,
              enabled: productForm.submissionStatus != FormzSubmissionStatus.inProgress,
              errorText: productForm.hasSubmittedOnce &&
                      productForm.productCategory.isNotValid
                  ? productForm.productCategory.error?.toString()
                  : null,
              onChanged: (value) {
                context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.productCategoryChanged(value),
                    );
              },
            ),
            const SizedBox(height: 16),

            // Campo de precio
            ProductInputField(
              label: 'Precio',
              initialValue: productForm.productPrice.value.toString(),
              prefixIcon: Icons.attach_money,
              isNumeric: true,
              enabled: productForm.submissionStatus != FormzSubmissionStatus.inProgress,
              errorText: productForm.hasSubmittedOnce &&
                      productForm.productPrice.isNotValid
                  ? productForm.productPrice.error?.toString()
                  : null,
              onChanged: (value) {
                final price = double.tryParse(value) ?? 0.0;
                context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.productPriceChanged(price),
                    );
              },
            ),
            const SizedBox(height: 16),

            // Campo de descripción
            ProductInputField(
              label: 'Descripción',
              initialValue: productForm.productDescription.value,
              prefixIcon: Icons.description,
              maxLines: 4,
              enabled: productForm.submissionStatus != FormzSubmissionStatus.inProgress,
              errorText: productForm.hasSubmittedOnce &&
                      productForm.productDescription.isNotValid
                  ? productForm.productDescription.error?.toString()
                  : null,
              onChanged: (value) {
                context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.productDescriptionChanged(value),
                    );
              },
            ),

            // Muestro mensaje de error
            if (productForm.submissionStatus == FormzSubmissionStatus.failure &&
                productForm.errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red[300]!),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error_outline, color: Colors.red[700]),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          productForm.errorMessage,
                          style: TextStyle(color: Colors.red[700]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorBody(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red[300],
            ),
            const SizedBox(height: 16),
            Text(
              'Error al cargar el producto',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Eliminar Producto'),
        content: const Text(
          '¿Estás seguro de que deseas eliminar este producto? Esta acción no se puede deshacer.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context
                  .read<ProductDetailBloc>()
                  .add(const ProductDetailEvent.deleteProductDetail());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }
}