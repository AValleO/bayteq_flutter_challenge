// Validaciones Globales para campos comunes de la app

class ValidationRules {
  // Constructor privado
  ValidationRules._();

  // Longitudes mínima y máxima
  static const int usernameMinLength = 3;
  static const int usernameMaxLength = 30;
  static const int passwordMinLength = 4;
  static const int passwordMaxLength = 20;
  static const int productTitleMinLength = 3;
  static const int productTitleMaxLength = 50;
  static const int productDescriptionMinLength = 10;
  static const int productDescriptionMaxLength = 200;
  static const int productCategoryMinLength = 3;
  static const int productCategoryMaxLength = 30;

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

  static String? validateProductTitle(String? value) {
    if (value == null || value.isEmpty) return 'El título es obligatorio';
    if (value.length < productTitleMinLength) return 'El título debe tener al menos $productTitleMinLength caracteres';
    if (value.length > productTitleMaxLength) return 'El título no debe exceder $productTitleMaxLength caracteres';
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) return 'El título solo puede contener letras, números y guiones bajos';
    return null;
  }

  static String? validateProductDescription(String? value) {
    if (value == null || value.isEmpty) return 'La descripción es obligatoria';
    if (value.length < productDescriptionMinLength) return 'La descripción debe tener al menos $productDescriptionMinLength caracteres';
    if (value.length > productDescriptionMaxLength) return 'La descripción no debe exceder $productDescriptionMaxLength caracteres';
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) return 'La descripción solo puede contener letras, números y guiones bajos';
    return null;
  }

  static String? validateProductPrice(double? value) {
    if (value == null) return 'El precio es obligatorio';
    if (value < 0) return 'El precio no puede ser negativo';
    return null;
  }

  static String? validateProductCategory(String? value) {
    if (value == null || value.isEmpty) return 'La categoría es obligatoria';
    if (value.length < productCategoryMinLength) return 'La categoría debe tener al menos $productCategoryMinLength caracteres';
    if (value.length > productCategoryMaxLength) return 'La categoría no debe exceder $productCategoryMaxLength caracteres';
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) return 'La categoría solo puede contener letras, números y guiones bajos';
    return null;
  }
}
