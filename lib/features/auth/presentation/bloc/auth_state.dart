part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    required LoginForm loginForm,
  }) = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.authenticated({
    required User user,
  }) = AuthAuthenticated;

  const factory AuthState.unauthenticated({
    required LoginForm loginForm,
  }) = AuthUnauthenticated;

  const factory AuthState.error({
    required String message,
  }) = AuthError;
}
