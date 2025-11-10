import 'package:bayteq_flutter_challenge/app/app.dart';
import 'package:bayteq_flutter_challenge/core/di/injection_container.dart';
import 'package:flutter/material.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();  
  await setupDependencies();
  
  runApp(const MyApp());
}