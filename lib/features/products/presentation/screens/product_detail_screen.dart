import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {

  final String? productId;

  const ProductDetailScreen({super.key, this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        // Back button appears automatically!
      ),
      body: Center(
        child: Text('Product Detail Screen for product ID: $productId'),
      ),
    );
  }
}