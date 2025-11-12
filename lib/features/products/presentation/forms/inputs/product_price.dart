import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

/// Enum para los posibles errores de validación de nombre de usuario
enum ProductPriceValidationError {
  empty,
  belowZero,
}

/// ProductPrice Input con validación
/// Utiliza Formz para la gestión del estado del formulario y delega las reglas de validación a ValidationRules
class ProductPrice extends FormzInput<double, ProductPriceValidationError> {
  /// Constructor para estado 'puro' (sin interacción del usuario)
  const ProductPrice.pure() : super.pure(0.0);
  
  /// Constructor para estado 'sucio' (el usuario ha interactuado)
  const ProductPrice.dirty([super.value = 0.0]) : super.dirty();

  @override
  ProductPriceValidationError? validator(double? value) {
    final errorMessage = ValidationRules.validateProductPrice(value);
    
    if (errorMessage == null) {
      return null; // Valido
    }
    if (value == null) {
      return ProductPriceValidationError.empty;
    }
    return ProductPriceValidationError.belowZero;
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    return ValidationRules.validateProductPrice(value);
  }
}
