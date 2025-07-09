// Dart dependencies
import 'dart:async';

// External dependencies
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/effect_mixin.dart';
import 'package:nexrack_app/application/states/home_state.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/core/notifier/user_notifier.dart';
import 'package:nexrack_app/data/models/models.dart';
import 'package:nexrack_app/data/repositories/booking_repository_rest.dart';
import 'package:nexrack_app/data/repositories/rack_repository_rest.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';
import 'package:nexrack_app/application/effects/app_effects.dart';

class HomeCubit extends Cubit<HomeState> with EffectMixin<HomeState> {
  //Repositories
  final UserRepositoryRest _userRepository;
  final RackRepositoryRest _rackRepositoryRest;
  final BookingRepositoryRest _bookingRepositoryRest;

  // Notifiers / Subscriptions
  final UserNotifier _userNotifier;
  late StreamSubscription<UserModel> _userSubscription;

  final Logger _logger = sl<Logger>();

  HomeCubit(
    this._userRepository,
    this._rackRepositoryRest,
    this._bookingRepositoryRest,
    this._userNotifier,
  ) : super(HomeState(user: UserModel.empty())) {
    _init();
  }

  @override
  HomeState copyStateWithEffects(HomeState state, List<AppEffect> effects) {
    return state.copyWith(effects: effects);
  }

  @override
  Logger get logger => _logger;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

  void _init() {
    _userSubscription = _userNotifier.userStream.listen((user) {
      emit(state.copyWith(user: user)); // Update state on new data
    });
  }
}
