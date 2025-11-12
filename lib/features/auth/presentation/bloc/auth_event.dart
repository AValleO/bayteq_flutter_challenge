part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // Login form events
  const factory AuthEvent.usernameChanged(String username) = LoginUsernameChanged;
  
  const factory AuthEvent.passwordChanged(String password) = LoginPasswordChanged;
  
  const factory AuthEvent.submitted() = LoginSubmitted;
  
  const factory AuthEvent.resetForm() = LoginResetForm;

  const factory AuthEvent.loggedOut() = LoggedOut;
}
