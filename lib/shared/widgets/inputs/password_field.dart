import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {

  final border = OutlineInputBorder(
    //borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(40),
  );

  PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      onChanged: (value) {
        print('Clave: $value');
      },
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),
        isDense: true,
        labelText: 'Contraseña',
        prefixIcon: const Icon(Icons.lock),
        errorText: null,
        helperMaxLines: 2,
        focusColor: colors.primary,
      ),
    );
  }
}