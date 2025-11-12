import 'dart:convert';
import 'package:bayteq_flutter_challenge/features/products/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Local data source para productos usando SharedPreferences
/// Responsable de cachear la lista de productos localmente
abstract class ProductLocalDataSource {
  /// Guardar lista completa de productos en caché
  Future<void> cacheProducts(List<ProductModel> products);

  /// Obtener lista de productos cacheados
  Future<List<ProductModel>> getCachedProducts();

  /// Agregar productos a la lista existente (para paginación)
  Future<void> appendProducts(List<ProductModel> newProducts);

  /// Actualizar un producto específico en el caché
  Future<void> updateCachedProduct(ProductModel product);

  /// Eliminar un producto del caché
  Future<void> deleteCachedProduct(int productId);

  /// Limpiar todo el caché de productos
  Future<void> clearCache();

  /// Verificar si hay productos cacheados
  Future<bool> hasCache();
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _cachedProductsKey = 'CACHED_PRODUCTS';

  ProductLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheProducts(List<ProductModel> products) async {
    final productsJson = products.map((product) => _productToJson(product)).toList();
    await sharedPreferences.setString(_cachedProductsKey, jsonEncode(productsJson));
  }

  @override
  Future<List<ProductModel>> getCachedProducts() async {
    final jsonString = sharedPreferences.getString(_cachedProductsKey);
    if (jsonString == null || jsonString.isEmpty) {
      return [];
    }

    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => _productFromJson(json)).toList();
  }

  @override
  Future<void> appendProducts(List<ProductModel> newProducts) async {
    final cachedProducts = await getCachedProducts();
    
    // Evitar duplicados basándose en el ID
    final existingIds = cachedProducts.map((p) => p.id).toSet();
    final productsToAdd = newProducts.where((p) => !existingIds.contains(p.id)).toList();
    
    final updatedList = [...cachedProducts, ...productsToAdd];
    await cacheProducts(updatedList);
  }

  @override
  Future<void> updateCachedProduct(ProductModel product) async {
    final cachedProducts = await getCachedProducts();
    final index = cachedProducts.indexWhere((p) => p.id == product.id);
    
    if (index != -1) {
      cachedProducts[index] = product;
      await cacheProducts(cachedProducts);
    }
  }

  @override
  Future<void> deleteCachedProduct(int productId) async {
    final cachedProducts = await getCachedProducts();
    final updatedList = cachedProducts.where((p) => p.id != productId).toList();
    await cacheProducts(updatedList);
  }

  @override
  Future<void> clearCache() async {
    await sharedPreferences.remove(_cachedProductsKey);
  }

  @override
  Future<bool> hasCache() async {
    return sharedPreferences.containsKey(_cachedProductsKey);
  }

  // Helper methods para convertir Product a/desde JSON
  Map<String, dynamic> _productToJson(ProductModel product) {
    return {
      'id': product.id,
      'title': product.title,
      'price': product.price,
      'description': product.description,
      'category': product.category,
      'thumbnail': product.thumbnail,
      'rating': product.rating,
    };
  }

  ProductModel _productFromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      thumbnail: json['thumbnail'] as String,
      rating: (json['rating'] as num).toDouble(),
    );
  }
}
