//External dependencies
import 'package:freezed_annotation/freezed_annotation.dart';

//Internal dependencies
import 'package:nexrack_app/data/models/models.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required UserModel user,
    bool? loginSuccessful,
    bool? loginFailed,
    String? errorMessage,
  }) = _LoginState;
}
