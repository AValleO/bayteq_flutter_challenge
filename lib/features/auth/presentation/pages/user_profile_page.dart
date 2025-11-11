import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
    listener: (context, state) {
      // Handle side effects based on auth state changes if needed
    },
    builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) => Column(
            children: [
              Text('Name: ${user.firstName} ${user.lastName}'),
              Text('Email: ${user.email}'),
              Text('Username: ${user.username}'),
              // ... more user info
            ],
          ),
          orElse: () => const Center(child: Text('Not authenticated')),
        );
      },
    );
  }
}
