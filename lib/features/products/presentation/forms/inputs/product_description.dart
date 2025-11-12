import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

/// Enum para los posibles errores de validación de nombre de usuario
enum ProductDescriptionValidationError {
  empty,
  tooShort,
  tooLong,
  invalidCharacters,
}

/// ProductDescription Input con validación
/// Utiliza Formz para la gestión del estado del formulario y delega las reglas de validación a ValidationRules
class ProductDescription extends FormzInput<String, ProductDescriptionValidationError> {
  /// Constructor para estado 'puro' (sin interacción del usuario)
  const ProductDescription.pure() : super.pure('');
  
  /// Constructor para estado 'sucio' (el usuario ha interactuado)
  const ProductDescription.dirty([super.value = '']) : super.dirty();

  @override
  ProductDescriptionValidationError? validator(String value) {
    final errorMessage = ValidationRules.validateProductDescription(value);
    
    if (errorMessage == null) {
      return null; // Valido
    }
    if (value.isEmpty) {
      return ProductDescriptionValidationError.empty;
    }
    if (value.length < ValidationRules.productDescriptionMinLength) {
      return ProductDescriptionValidationError.tooShort;
    }
    if (value.length > ValidationRules.productDescriptionMaxLength) {
      return ProductDescriptionValidationError.tooLong;
    }
    return ProductDescriptionValidationError.invalidCharacters;
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    return ValidationRules.validateProductDescription(value);
  }
}
