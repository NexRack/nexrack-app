//Flutter dependencies
import 'package:flutter/material.dart';

//External dependencies
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RootScaffoldScreen extends StatelessWidget {
  const RootScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ChatGepeto background gradient
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.0, -0.3),
            radius: 1.5,
            colors: [
              Color(0xFF404040), // Medium-dark grey
              Color(0xFF303030), // Dark grey
              Color(0xFF202020), // Very dark grey
              Color(0xFF101010), // Almost black
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: AutoRouter(),
      ),
    );
  }
}
