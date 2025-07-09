// External dependencies
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/effect_mixin.dart';
import 'package:nexrack_app/application/states/login_state.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/core/notifier/user_notifier.dart';
import 'package:nexrack_app/data/models/models.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';
import 'package:nexrack_app/application/effects/app_effects.dart';

class LoginCubit extends Cubit<LoginState> with EffectMixin<LoginState> {
  // Repositories
  final UserRepositoryRest _userRepository;
  final Logger _logger = sl<Logger>();

  // Notifiers / Subscriptions
  final UserNotifier _userNotifier;

  LoginCubit(this._userRepository, this._userNotifier) : super(LoginState(user: UserModel.empty()));

  @override
  LoginState copyStateWithEffects(LoginState state, List<AppEffect> effects) {
    return state.copyWith(effects: effects);
  }

  @override
  Logger get logger => _logger;

  Future<void> authenticateUser(String name) async {
    try {
      _logger.i("Authenticating user with name: $name");
      await _userRepository.authenticateUser(name);
      updateUserName(name);
      replaceRouteEffect(path: "/home");
    } catch (e, stackTrace) {
      _logger.e("Authentication failed", stackTrace: stackTrace);
      showSnackBarEffect(message: "Authentication failed");
    }
  }

  void updateUserName(String email) {
    _logger.i("Updating user name");
    _userNotifier.updateUser(state.user.copyWith(name: email));
    emit(state.copyWith(user: state.user.copyWith(name: email)));
  }

}
