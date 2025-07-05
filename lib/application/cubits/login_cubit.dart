// External dependencies
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/states/login_state.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/data/models/models.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepositoryRest _userRepository;
  final Logger _logger = sl<Logger>();

  LoginCubit(this._userRepository) : super(LoginState(user: UserModel.empty()));

  Future<void> authenticateUser(String email, String password) async {
    try {
      _logger.i("Authenticating user with email: $email");
      await _userRepository.authenticateUser(email, password);
      updateUserEmail(email);
    } catch (e, stackTrace) {
      _logger.e("Authentication failed", stackTrace: stackTrace);
      updateErrorMessage(e.toString());
    }
  }

  void updateUserEmail(String email) {
    _logger.i("Updating user email");
    emit(state.copyWith(user: state.user.copyWith(email: email)));
  }

  void updateErrorMessage(String message) {
    _logger.w("Updating error message");
    emit(state.copyWith(errorMessage: message));
  }
}
