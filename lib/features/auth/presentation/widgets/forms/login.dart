import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/auth/presentation/widgets/buttons/submit_button.dart';
import 'package:bayteq_flutter_challenge/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:bayteq_flutter_challenge/core/di/injection_container.dart'
    as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.getIt<AuthBloc>(),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if(state is AuthAuthenticated){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Welcome, ${state.user.username}!'),
                  backgroundColor: Colors.green,
                ),
              );
              // TODO: Navegar a la pantalla principal
            }
            else if(state is AuthInitial) {
              if (state.loginForm.submissionStatus == FormzSubmissionStatus.failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.loginForm.errorMessage),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [UsernameField(), SizedBox(height: 10), PasswordField(), SizedBox(height: 20), SubmitButton()],
          ),
        ),
      ),
    );
  }
}