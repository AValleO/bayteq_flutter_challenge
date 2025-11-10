import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {

  final border = OutlineInputBorder(
    //borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(40),
  );

  UsernameField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      onChanged: (value) {
        print('Usuario: $value');
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
        errorText: null,
        helperMaxLines: 2,
        focusColor: colors.primary,
      ),
    );
  }
}