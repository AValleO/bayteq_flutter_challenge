import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

/// Enum para los posibles errores de validación de nombre de usuario
enum UsernameValidationError {
  empty,
  tooShort,
  tooLong,
  invalidCharacters,
}

/// Username Input con validación
/// Utiliza Formz para la gestión del estado del formulario y delega las reglas de validación a ValidationRules
class Username extends FormzInput<String, UsernameValidationError> {
  /// Constructor para estado 'puro' (sin interacción del usuario)
  const Username.pure() : super.pure('');
  
  /// Constructor para estado 'sucio' (el usuario ha interactuado)
  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String value) {
    final errorMessage = ValidationRules.validateUsername(value);
    
    if (errorMessage == null) {
      return null; // Valido
    }
    if (value.isEmpty) {
      return UsernameValidationError.empty;
    }
    if (value.length < ValidationRules.usernameMinLength) {
      return UsernameValidationError.tooShort;
    }
    if (value.length > ValidationRules.usernameMaxLength) {
      return UsernameValidationError.tooLong;
    }
    return UsernameValidationError.invalidCharacters;
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    return ValidationRules.validateUsername(value);
  }
}
