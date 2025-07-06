// Flutter dependencies
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';

//Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/application/states/login_state.dart';
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
                      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 30.w),
                      child: GFButton(
                        text: "Login",
                        onPressed:
                            () => context.read<LoginCubit>().authenticateUser(
                              "authenticate",
                              "authenticate",
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
              TextTitleSmall(text: "Timots and Co. © ${DateTime.now().year}"),
            ],
          ),
        );
      },
    );
  }
}
