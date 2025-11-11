part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();
  
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {

  final LoginForm loginForm;

  const AuthInitial({required this.loginForm});

  @override
  List<Object> get props => [loginForm];

  AuthInitial copyWith({
    LoginForm? loginForm,
  }) {
    return AuthInitial(
      loginForm: loginForm ?? this.loginForm,
    );
  }
}

class AuthAuthenticated extends AuthState {

  final User user;

  AuthAuthenticated(this.user){
    print('User authenticated: ${user.username}');
  }

  @override
  List<Object> get props => [user];
}
