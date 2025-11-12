import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

/// Enum para los posibles errores de validación de nombre de usuario
enum ProductTitleValidationError {
  empty,
  tooShort,
  tooLong,
  invalidCharacters,
}

/// ProductTitle Input con validación
/// Utiliza Formz para la gestión del estado del formulario y delega las reglas de validación a ValidationRules
class ProductTitle extends FormzInput<String, ProductTitleValidationError> {
  /// Constructor para estado 'puro' (sin interacción del usuario)
  const ProductTitle.pure() : super.pure('');
  
  /// Constructor para estado 'sucio' (el usuario ha interactuado)
  const ProductTitle.dirty([super.value = '']) : super.dirty();

  @override
  ProductTitleValidationError? validator(String value) {
    final errorMessage = ValidationRules.validateProductTitle(value);
    
    if (errorMessage == null) {
      return null; // Valido
    }
    if (value.isEmpty) {
      return ProductTitleValidationError.empty;
    }
    if (value.length < ValidationRules.productTitleMinLength) {
      return ProductTitleValidationError.tooShort;
    }
    if (value.length > ValidationRules.productTitleMaxLength) {
      return ProductTitleValidationError.tooLong;
    }
    return ProductTitleValidationError.invalidCharacters;
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    return ValidationRules.validateProductTitle(value);
  }
}
