// Flutter dependencies
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';

//Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/application/states/login_state.dart';
import 'package:nexrack_app/core/services/effects/app_effect_handler.dart';
import 'package:nexrack_app/presentation/widgets/text/texts.dart';
import 'package:nexrack_app/core/di/locator.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: _LoginListener(),
    );
  }
}

class _LoginListener extends StatelessWidget {
  const _LoginListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.effects.isNotEmpty) {
          sl<AppEffectHandler>().handleEffects(
            context,
            state.effects,
            context.read<LoginCubit>().clearEffects,
          );
        }
      },
      child: LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController loginTextFieldController;

  @override
  void initState() {
    super.initState();
    loginTextFieldController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    loginTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return SizedBox(
          height: 1.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/500px-BMW_logo_%28gray%29.svg.png",
                        scale: 4,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    TextHeadlineMedium(text: "Welcome to NexRack,"),
                    TextHeadlineMedium(text: "Glad to see you!"),
                    SizedBox(height: 100.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 35.w,
                      ),
                      child: GFTextField(
                        controller: loginTextFieldController,
                        color: GFColors.LIGHT,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 30.w,
                      ),
                      child: GFButton(
                        text: "Login",
                        onPressed:
                            () => context.read<LoginCubit>().authenticateUser(
                              loginTextFieldController.text,
                            ),
                        textStyle: TextTheme.of(context).bodyLarge,
                        color: GFColors.LIGHT,
                        size: 0.07.sh,
                        shape: GFButtonShape.pills,
                        fullWidthButton: true,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TextTitleSmall(
                    text: "Timots, Kevs and Co. © ${DateTime.now().year}",
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
