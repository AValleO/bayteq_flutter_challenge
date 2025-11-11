import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameField extends StatelessWidget {

  final String? errorText;
  final String? helperText;
  final border = OutlineInputBorder(
    //borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(40),
  );

  UsernameField({
    super.key,
    this.errorText,
    this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    // Hago wrap con BlocBuilder para escuchar cambios en el estado del AuthBloc
    return TextFormField(
      onChanged: (value) {
        print('Usuario: $value');
        context.read<AuthBloc>().add(LoginUsernameChanged(value));
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
        labelText: 'Usuario',
        prefixIcon: const Icon(Icons.person),
        errorText: errorText,
        errorMaxLines: 2,
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
