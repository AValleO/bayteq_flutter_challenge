import 'package:bayteq_flutter_challenge/core/di/injection_container.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              final products = state is ProductLoaded
                  ? state.allProducts
                  : [];
              return Text('Lista de Productos (Total: ${products.length})');
            },
          ),
        ),
        body: const ProductList(),
      ),
    );
  }
}
