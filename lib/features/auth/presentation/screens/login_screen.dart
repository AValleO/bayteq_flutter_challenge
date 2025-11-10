import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/bayteq-white.png',
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Flutter Challenge',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: LoginForm(),
                    ),
                  ],
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}