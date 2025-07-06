//Flutter dependencies
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Internal dependencies
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/core/router/app_router.dart';

final _appRouter = AppRouter();

void main() {
  // Inject dependencies before running the app
  setupLocator();
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 760), // Common mobile design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "NexRack App",
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.dark(
          primary: Colors.grey[200]!,
          secondary: Colors.grey[300]!,
          surface: Colors.white,
          onSurface: Colors.grey[300]!,
        ),
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.black,
        //   foregroundColor: Colors.white,
        //   elevation: 0,
        // ),
        // cardTheme: CardTheme(
        //   color: Colors.grey[850],
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        // ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.grey[200],
        //     foregroundColor: Colors.black,
        //   ),
        // ),
        textTheme: TextTheme(
          // Display styles (largest) - white
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),

          // Headline styles - white to light gray
          headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          headlineSmall: TextStyle(
            color: Colors.grey[100],
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),

          // Title styles - light gray to mid gray
          titleLarge: TextStyle(
            color: Colors.grey[200],
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            color: Colors.grey[300],
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),

          // Body styles - dark gray to black
          bodyLarge: TextStyle(color: Colors.grey[900], fontSize: 14),
          bodyMedium: TextStyle(color: Colors.grey[900], fontSize: 12),
          bodySmall: TextStyle(color: Colors.grey[900], fontSize: 10),

          // Label styles - black
          labelLarge: TextStyle(
            color: Colors.grey[900],
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: TextStyle(
            color: Colors.grey[900],
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: TextStyle(
            color: Colors.grey[900],
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
