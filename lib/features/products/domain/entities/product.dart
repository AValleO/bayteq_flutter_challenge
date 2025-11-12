import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String thumbnail;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.thumbnail
  });

  @override
  List<Object?> get props => [
    id,
    title,
    price,
    description,
    category,
    thumbnail,
  ];
}

class PaginatedProducts extends Equatable {
  final List<Product> products;
  final int total;
  final int limit;
  final int skip;

  const PaginatedProducts({
    required this.products,
    required this.total,
    required this.limit,
    required this.skip,
  });

  bool get hasMore => skip + products.length < total;
  int get currentPage => (skip ~/ limit) + 1;

  @override
  List<Object?> get props => [
    products,
    total,
    limit,
    skip,
  ];
}