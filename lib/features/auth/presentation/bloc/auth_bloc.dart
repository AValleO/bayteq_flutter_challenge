import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  /// Debo registrar los casos de uso
  /// El Bloc se inicializa con el estado inicial en el container DI
  final LoginUser loginUserUseCase;

  AuthBloc({
    required this.loginUserUseCase,
  }) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
