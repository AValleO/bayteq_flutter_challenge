import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  /// Debo registrar los casos de uso
  /// El Bloc se inicializa con el estado inicial en el container DI
  final LoginUser loginUserUseCase;

  AuthBloc({
    required this.loginUserUseCase,
  }) : super(AuthInitial(
    loginForm: LoginForm(
      username: Username.pure(),
      password: Password.pure(),
    ),
  )) {
    on<LoginUsernameChanged>(onLoginUsernameChanged);
    on<LoginPasswordChanged>(onLoginPasswordChanged);
    on<LoginSubmitted>(onLoginSubmitted);
    on<LoginResetForm>(onLoginResetForm);
  }

  onLoginUsernameChanged(LoginUsernameChanged event, Emitter<AuthState> emit) {
    final currentState = state;
    if (currentState is AuthInitial) {
      final password = currentState.loginForm.password.isPure
          ? Password.pure()
          : currentState.loginForm.password.copyWithUsername(event.username);
      final updatedForm = currentState.loginForm.copyWith(
        username: Username.dirty(event.username),
        password: password,
      );
      emit(AuthInitial(loginForm: updatedForm));
    }
  }

  onLoginPasswordChanged(LoginPasswordChanged event, Emitter<AuthState> emit) {
    final currentState = state;
    if (currentState is AuthInitial) {
      final updatedForm = currentState.loginForm.copyWith(
        password: Password.dirty(
          value: event.password,
          username: currentState.loginForm.username.value,
        ),
      );
      emit(AuthInitial(loginForm: updatedForm));
    }
  }

  onLoginSubmitted(LoginSubmitted event, Emitter<AuthState> emit) async {
    // Implementar la lógica de envío del formulario
    final currentState = state;
    if (currentState is AuthInitial) {
      if (!currentState.loginForm.isValid) {
        final updatedForm = currentState.loginForm.copyWith(
          submissionStatus: FormzSubmissionStatus.failure,
          errorMessage: 'Por favor, corrige los errores en el formulario.',
          hasSubmittedOnce: true,
        );
        emit(AuthInitial(loginForm: updatedForm));
        return;
      }
      // Aquí iría la lógica para llamar al caso de uso de login
      // Emito con un estado de envío en progreso
      final updatedForm = currentState.loginForm.copyWith(
        submissionStatus: FormzSubmissionStatus.inProgress,
        hasSubmittedOnce: true
      );
      emit(AuthInitial(loginForm: updatedForm));

      final result = await loginUserUseCase(
        LoginParams(
          username: currentState.loginForm.username.value,
          password: currentState.loginForm.password.value,
        ),
      );

      result.fold(
        (failure)=> emit(currentState.copyWith(
          loginForm: currentState.loginForm.copyWith(
            submissionStatus: FormzSubmissionStatus.failure,
            errorMessage: 'Error al iniciar sesión. Inténtalo de nuevo.',
          ),
        )), 
        (user)=> emit(AuthAuthenticated(user))
      );

    }
  }

  onLoginResetForm(LoginResetForm event, Emitter<AuthState> emit) {
    final currentState = state;
    if (currentState is AuthInitial) {
      final resetForm = LoginForm(
        username: Username.pure(),
        password: Password.pure(),
      );
      emit(AuthInitial(loginForm: resetForm));
    }
  }
}