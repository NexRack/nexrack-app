//Flutter dependencies
import 'package:flutter/material.dart';
//Internal depeendencies
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/core/router/app_router.dart';

final _appRouter = AppRouter();

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
    return MaterialApp.router(
      title: "Nexrack App",
      routerConfig: _appRouter.config(

      ),
    );
  }
}