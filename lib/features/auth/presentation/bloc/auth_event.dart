part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

// Eventos relacionados con el formulario de login
class LoginUsernameChanged extends AuthEvent {
  final String username;

  const LoginUsernameChanged(this.username);

  @override
  List<Object> get props => [username];
}

class LoginPasswordChanged extends AuthEvent {
  final String password;

  const LoginPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class LoginSubmitted extends AuthEvent {
  const LoginSubmitted();
}

class LoginResetForm extends AuthEvent {
  const LoginResetForm();
}