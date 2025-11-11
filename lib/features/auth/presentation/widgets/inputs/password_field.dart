import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordField extends StatelessWidget {

  final String? errorText;
  final String? helperText;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
  );

  PasswordField({
    super.key,
    this.errorText,
    this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      onChanged: (value) {
        print('Clave: $value');
        context.read<AuthBloc>().add(LoginPasswordChanged(value));
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
        errorText: errorText,
        helperText: helperText,
        helperMaxLines: 2,
        helperStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 12,
        ),
        focusColor: colors.primary,
      ),
    );
  }
}
