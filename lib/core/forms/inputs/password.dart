import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

/// Enum para los posibles errores de validación de la contraseña
enum PasswordValidationError {
  empty,
  tooShort,
  tooLong,
  containsUsername, 
}

/// Password Input con validación dependiente del username
/// Utiliza Formz para la gestión del estado del formulario y delega las reglas de validación a ValidationRules
class Password extends FormzInput<String, PasswordValidationError> {
  
  final String username; // Para validación dependiente
  
  const Password.pure({this.username = ''}) : super.pure('');

  const Password.dirty({
    String value = '',
    this.username = '',
  }) : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    final basicError = ValidationRules.validatePassword(value);
    
    if (basicError != null) {
      if (value.isEmpty) {
        return PasswordValidationError.empty;
      }      
      if (value.length < ValidationRules.passwordMinLength) {
        return PasswordValidationError.tooShort;
      }      
      if (value.length > ValidationRules.passwordMaxLength) {
        return PasswordValidationError.tooLong;
      }
    }
    
    // Validación dependiente del username
    // Se asegura que la contraseña no contenga el nombre de usuario
    if (username.isNotEmpty && 
        value.toLowerCase().contains(username.toLowerCase())) {
      return PasswordValidationError.containsUsername;
    }

    return null; // Valido
  }

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (error == PasswordValidationError.containsUsername) {
      return 'La contraseña no debe contener el nombre de usuario';
    }
    return ValidationRules.validatePassword(value);
  }

  /// Copy with new username para validación dependiente
  Password copyWithUsername(String newUsername) {
    return Password.dirty(
      value: value,
      username: newUsername,
    );
  }
}
