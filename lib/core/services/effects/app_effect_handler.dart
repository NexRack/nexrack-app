// External dependencies
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
// Internal dependencies
import 'package:nexrack_app/application/effects/app_effects.dart';
import 'package:nexrack_app/core/di/locator.dart';

class AppEffectHandler {
  
  final _logger = sl<Logger>();
  
  AppEffectHandler();

  void handleEffects(BuildContext context, List<AppEffect> effects, void Function() clearAppEffects) {
    for (var effect in effects) {
      handle(effect, context);
    }
    clearAppEffects();
  }

  void handle(AppEffect effect, BuildContext context) {
   switch(effect) {
     case ShowSnackbarEffect showSnackBarEffect:
       _handleShowSnackbarEffect(showSnackBarEffect);
     case ReplaceRouteEffect replaceRouteEffect:
       _handleReplaceRouteEffect(replaceRouteEffect, context);
     default:
       _handleUnkownEffect(effect);
   }
  }

  void _handleShowSnackbarEffect(ShowSnackbarEffect effect) {
    _logger.d("Handling ShowSnackbarEffect");
  }

  void _handleUnkownEffect(AppEffect effect) {
    _logger.e("Unimplemented Effect Handler for effect: $effect");
  }

  void _handleReplaceRouteEffect(ReplaceRouteEffect effect, BuildContext context) {
    _logger.d("Handling ReplaceRouteEffect");
    AutoRouter.of(context).pushPath(effect.routeName);
  }
}
