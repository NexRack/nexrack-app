// Flutter dependencies
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/home_cubit.dart';
import 'package:nexrack_app/application/states/home_state.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/core/services/effects/app_effect_handler.dart';
import 'package:nexrack_app/presentation/widgets/text/texts.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeCubit>(),
      child: _HomeListener(),
    );
  }
}

class _HomeListener extends StatelessWidget {
  const _HomeListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.effects.isNotEmpty) {
          sl<AppEffectHandler>().handleEffects(
            context,
            state.effects,
            context.read<HomeCubit>().clearEffects,
          );
        }
      },
      child: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Center(
          child: TextTitleMedium(text: "Welcome Back, ${state.user.name}!"),
        );
      },
    );
  }
}
