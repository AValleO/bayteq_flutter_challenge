import 'package:json_annotation/json_annotation.dart';
import 'package:bayteq_flutter_challenge/features/products/data/models/product_model.dart';

part 'product_response_dto.g.dart';

/// DTO para un solo producto
@JsonSerializable()
class ProductDto {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String thumbnail;
  final double rating;

  const ProductDto({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.thumbnail,
    required this.rating,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  ProductModel toModel() {
    return ProductModel(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      thumbnail: thumbnail,
      rating: rating,
    );
  }
}

/// DTO para la respuesta paginada de productos
@JsonSerializable()
class ProductResponseDto {
  final List<ProductDto> products;
  final int total;
  final int skip;
  final int limit;

  const ProductResponseDto({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseDtoToJson(this);
}
