//External dependencies
import 'package:freezed_annotation/freezed_annotation.dart';

//Internal dependencies
import 'package:nexrack_app/application/cubits/effect_mixin.dart';
import 'package:nexrack_app/application/effects/app_effects.dart';
import 'package:nexrack_app/data/models/models.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState implements HasEffects{
  const factory HomeState({
    required UserModel user,
    @Default(<AppEffect>[]) List<AppEffect> effects,
  }) = _HomeState;

  const HomeState._();

  @override
  List<AppEffect> get stateEffects => effects;
}
