import 'package:flutter/material.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/presentation/screens/login_screen.dart';

void main() {
  // Inject dependencies before running the app
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //TODO fix routing
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const LoginScreen(),
    );
  }
}