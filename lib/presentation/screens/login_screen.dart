// Flutter dependencies
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/application/states/login_state.dart';
import 'package:nexrack_app/core/di/locator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: LoginScreenContent(),
    );
  }
}

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = context.read<LoginCubit>();
        return Column(
          children: [
            Text(cubit.state.user.email),
            ElevatedButton(
              onPressed: () => cubit.authenticateUser("authenticate", "authenticate"),
              child: const Text("Click here"),
            ),
          ],
        );
      },
    );
  }
}
