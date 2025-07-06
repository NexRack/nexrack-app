//External dependencies
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexrack_app/application/effects/app_effects.dart';

//Internal dependencies

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<AppEffect>[]) List<AppEffect> effects,
  }) = _HomeState;
}
