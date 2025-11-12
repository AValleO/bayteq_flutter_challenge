import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

/// Enum para los posibles errores de validación de nombre de usuario
enum ProductCategoryValidationError {
  empty,
  tooShort,
  tooLong,
  invalidCharacters,
}

/// ProductCategory Input con validación
/// Utiliza Formz para la gestión del estado del formulario y delega las reglas de validación a ValidationRules
class ProductCategory extends FormzInput<String, ProductCategoryValidationError> {
  /// Constructor para estado 'puro' (sin interacción del usuario)
  const ProductCategory.pure() : super.pure('');
  
  /// Constructor para estado 'sucio' (el usuario ha interactuado)
  const ProductCategory.dirty([super.value = '']) : super.dirty();

  @override
  ProductCategoryValidationError? validator(String value) {
    final errorMessage = ValidationRules.validateProductCategory(value);
    
    if (errorMessage == null) {
      return null; // Valido
    }
    if (value.isEmpty) {
      return ProductCategoryValidationError.empty;
    }
    if (value.length < ValidationRules.productCategoryMinLength) {
      return ProductCategoryValidationError.tooShort;
    }
    if (value.length > ValidationRules.productCategoryMaxLength) {
      return ProductCategoryValidationError.tooLong;
    }
    return ProductCategoryValidationError.invalidCharacters;
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    return ValidationRules.validateProductCategory(value);
  }
}
