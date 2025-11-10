// Validaciones Globales para campos comunes de la app

class ValidationRules {
  // Constructor privado
  ValidationRules._();

  // Longitudes mínima y máxima
  static const int usernameMinLength = 3;
  static const int usernameMaxLength = 30;
  static const int passwordMinLength = 4;
  static const int passwordMaxLength = 20;

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) return 'El nombre de usuario es obligatorio';
    if (value.length < usernameMinLength) return 'El nombre de usuario debe tener al menos $usernameMinLength caracteres';
    if (value.length > usernameMaxLength) return 'El nombre de usuario no debe exceder $usernameMaxLength caracteres';
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) return 'El nombre de usuario solo puede contener letras, números y guiones bajos';
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'La contraseña es obligatoria';   
    if (value.length < passwordMinLength) return 'La contraseña debe tener al menos $passwordMinLength caracteres';
    if (value.length > passwordMaxLength) return 'La contraseña no debe exceder $passwordMaxLength caracteres';
    return null;
  }

  static bool isUsernameValid(String? value) {
    return validateUsername(value) == null;
  }

  static bool isPasswordValid(String? value) {
    return validatePassword(value) == null;
  }
}
