import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is! AuthInitial) return const SizedBox();
        return ElevatedButton(
          onPressed: state.loginForm.isValid && state.loginForm.submissionStatus != FormzSubmissionStatus.inProgress
              ? () {
                  context.read<AuthBloc>().add(LoginSubmitted());
                }
              : null,
          child: state.loginForm.submissionStatus == FormzSubmissionStatus.inProgress
              ? SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : Text('Acceder'),
        );
      },
    );
  }
}