import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:formz/formz.dart';

class LoginForm with FormzMixin {

  final Username username;
  final Password password;
  final FormzSubmissionStatus submissionStatus;
  final String errorMessage;
  final bool hasSubmittedOnce;

  LoginForm({
    required this.username,
    required this.password,
    this.submissionStatus = FormzSubmissionStatus.initial,
    this.errorMessage = '',
    this.hasSubmittedOnce = false,
  });

  @override
  List<FormzInput> get inputs => [username, password];

  LoginForm copyWith({
    Username? username,
    Password? password,
    FormzSubmissionStatus? submissionStatus,
    String? errorMessage,
    bool? hasSubmittedOnce,
  }) {
    return LoginForm(
      username: username ?? this.username,
      password: password ?? this.password,
      submissionStatus: submissionStatus ?? this.submissionStatus,
      errorMessage: errorMessage ?? this.errorMessage,
      hasSubmittedOnce: hasSubmittedOnce ?? this.hasSubmittedOnce,
    );
  }
}