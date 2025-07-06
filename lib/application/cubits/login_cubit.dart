// External dependencies
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/effect_mixin.dart';
import 'package:nexrack_app/application/states/login_state.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/data/models/models.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';
import 'package:nexrack_app/application/effects/app_effects.dart';

class LoginCubit extends Cubit<LoginState> with EffectMixin<LoginState> {
  final UserRepositoryRest _userRepository;
  final Logger _logger = sl<Logger>();

  LoginCubit(this._userRepository) : super(LoginState(user: UserModel.empty()));

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
      replaceRouteEffect(path: "/test");
    } catch (e, stackTrace) {
      _logger.e("Authentication failed", stackTrace: stackTrace);
      showSnackBarEffect(message: "Authentication failed");
    }
  }

  void updateUserName(String email) {
    _logger.i("Updating user name");
    emit(state.copyWith(user: state.user.copyWith(name: email)));
  }

}
