import 'package:bayteq_flutter_challenge/core/di/injection_container.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Lista de Productos')),
        body: const ProductList(),
      ),
    );
  }
}
