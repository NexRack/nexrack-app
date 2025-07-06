// Flutter dependencies
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/application/states/login_state.dart';
import 'package:nexrack_app/core/di/locator.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: LoginView(),
    );
  }
}

class _LoginListener extends StatelessWidget {
  const _LoginListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {},
      child: LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(state.user.email),
            ElevatedButton(
              onPressed: () => context.read<LoginCubit>().authenticateUser("authenticate", "authenticate"),
              child: const Text("Click here"),
            ),
          ],
        );
      },
    );
  }
}
