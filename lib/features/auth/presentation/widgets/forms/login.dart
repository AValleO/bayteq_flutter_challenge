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
        child: BlocConsumer<AuthBloc, AuthState>(
          builder: (context, state) {
            if(state is! AuthInitial) return const SizedBox();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              key: ValueKey(state.loginForm.submissionStatus),
              children: [
                UsernameField(
                  errorText: state.loginForm.username.errorMessage,
                ),
                SizedBox(height: 10),
                PasswordField(
                  errorText: state.loginForm.password.errorMessage,
                ),
                SizedBox(height: 20),
                SubmitButton(
                  //isLoading: state.loginForm.submissionStatus == FormzSubmissionStatus.inProgress,
                ),
              ],
            );
          },
          listener: (context, state) {
            if(state is AuthAuthenticated){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Bienvenid@, ${state.user.username}!'),
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
                // Reiniciar el estado de formulario después de mostrar el error
                context.read<AuthBloc>().add(const LoginResetForm());
              }
            }
          },
        )
      ),
    );
  }
}