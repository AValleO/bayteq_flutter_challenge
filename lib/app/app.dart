import 'package:bayteq_flutter_challenge/config/router/app_router.dart';
import 'package:bayteq_flutter_challenge/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Bayteq Flutter Challenge',
      theme: AppTheme(selectedColorIndex: 0).theme(),
    );
  }
}