import 'package:bayteq_flutter_challenge/shared/shared.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          UsernameField(),
          SizedBox(height: 10),
          PasswordField(),
        ],
      ),
    );
  }
}