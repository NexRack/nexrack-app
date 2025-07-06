// External dependencies
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
// Internal dependencies
import 'package:nexrack_app/application/effects/app_effects.dart';

mixin EffectMixin<State> on Cubit<State> {
  State copyStateWithEffects(State state, List<AppEffect> effects);
  Logger get logger;

  void addEffect(AppEffect effect) {
    logger.d("Adding AppEffect: $effect");
    final current = state;
    final newEffects = [..._currentEffects, effect];
    emit(copyStateWithEffects(current, newEffects));
  }

  void clearEffects() {
    emit(copyStateWithEffects(state, []));
  }

  List<AppEffect> get _currentEffects {
    if (state is HasEffects) {
      return (state as HasEffects).stateEffects;
    }
    throw StateError('State must implement HasEffects');
  }

  void showSnackBarEffect({required String message}) {
    logger.i("ShowSnackba with message: $message");
    addEffect(ShowSnackbarEffect(message));
  }

  void replaceRouteEffect({required String path}) {
    logger.i("ReplaceRoute with path: $path");
    addEffect(ReplaceRouteEffect(path));
  }
}

abstract class HasEffects {
  List<AppEffect> get stateEffects;
}