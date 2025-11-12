import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/auth/presentation/widgets/buttons/submit_button.dart';
import 'package:bayteq_flutter_challenge/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: (loginForm) => _buildLoginForm(context, loginForm),
            orElse: () => const SizedBox(),
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (user) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Bienvenid@, ${user.username}!'),
                  backgroundColor: Colors.green,
                ),
              );
              context.go('/home');
            },
            initial: (loginForm) {
              if (loginForm.submissionStatus == FormzSubmissionStatus.failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(loginForm.errorMessage),
                    backgroundColor: Colors.red,
                  ),
                );
                // Reiniciar el estado de formulario después de mostrar el error
                context.read<AuthBloc>().add(const AuthEvent.resetForm());
              }
            },
            orElse: () {},
          );
        },
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, LoginForm loginForm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      key: ValueKey(loginForm.submissionStatus),
      children: [
        UsernameField(
          errorText: loginForm.username.errorMessage,
        ),
        const SizedBox(height: 10),
        PasswordField(
          errorText: loginForm.password.errorMessage,
        ),
        const SizedBox(height: 20),
        SubmitButton(
          isLoading: loginForm.submissionStatus == FormzSubmissionStatus.inProgress,
          onPressed: () {
            return loginForm.isValid && 
                   loginForm.submissionStatus != FormzSubmissionStatus.inProgress
              ? context.read<AuthBloc>().add(const AuthEvent.submitted())
              : null;
          },
        ),
      ],
    );
  }
}