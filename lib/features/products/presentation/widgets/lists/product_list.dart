import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Lo defino como StatefulWidget para manejar el ScrollController
class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Cargo la primera página de productos al iniciar el widget
    context.read<ProductBloc>().add(const ProductEvent.loadFirstPage());
    
    // Configuro el listener para scroll infinito
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // Manejo del evento de scroll para disparar la carga de la siguiente página
  void _onScroll() {
    if (_isBottom) {
      print('Alcanzado el final de la lista, cargando más productos...');
      context.read<ProductBloc>().add(const ProductEvent.loadNextPage());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9); // Disparo al 90% del scroll
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      listener: (BuildContext context, state) {
        // Presento mensajes de error si los hay según el estado
        state.maybeWhen(
          loaded: (paginatedProducts, allProducts, isLoadingMore, paginationError) {
            if (paginationError != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(paginationError),
                  action: SnackBarAction(
                    label: 'Retry',
                    onPressed: () {
                      context.read<ProductBloc>().add(const ProductEvent.retryPagination());
                    },
                  ),
                ),
              );
            }
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                action: SnackBarAction(
                  label: 'Retry',
                  onPressed: () {
                    context.read<ProductBloc>().add(const ProductEvent.loadFirstPage());
                  },
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
      builder: (BuildContext context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (paginatedProducts, allProducts, isLoadingMore, paginationError) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<ProductBloc>().add(const ProductEvent.refreshProducts());
                await Future.delayed(const Duration(milliseconds: 500));
              },
              child: ListView.builder(
                // TODO: Crear widget separado para el ítem de producto
                controller: _scrollController,
                itemCount: allProducts.length + (isLoadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index < allProducts.length) {
                    final product = allProducts[index];
                    return SizedBox(
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: InkWell(
                          onTap: () {
                            print('Producto seleccionado: ${product.title}');
                          },
                          child: ListTile(
                            leading: Image.network(
                              product.thumbnail,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                // Acción al presionar el ícono
                              },
                            ),
                            title: Text(
                              product.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$${product.price.toStringAsFixed(2)} - ${product.category}',
                                ),
                                const SizedBox(height: 4),
                                RatingBarIndicator(
                                  rating: product.rating,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 16.0,
                                  direction: Axis.horizontal,
                                ),
                              ],
                            ),
                            isThreeLine: true,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                },
              ),
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text('Error: $message'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<ProductBloc>().add(const ProductEvent.loadFirstPage());
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
          orElse: () => const Center(child: Text('No products available')),
        );
      },
    );
  }
}