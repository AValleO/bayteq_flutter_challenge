import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {

  final VoidCallback onPressed;
  final bool isLoading;
  const SubmitButton({super.key, required this.onPressed, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: isLoading
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
  }
}