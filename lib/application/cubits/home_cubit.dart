// External dependencies
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/effect_mixin.dart';
import 'package:nexrack_app/application/states/home_state.dart';
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/data/models/models.dart';
import 'package:nexrack_app/data/repositories/booking_repository_rest.dart';
import 'package:nexrack_app/data/repositories/rack_repository_rest.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';
import 'package:nexrack_app/application/effects/app_effects.dart';

class HomeCubit extends Cubit<HomeState> with EffectMixin<HomeState> {
  final UserRepositoryRest _userRepository;
  final RackRepositoryRest _rackRepositoryRest;
  final BookingRepositoryRest _bookingRepositoryRest;

  final Logger _logger = sl<Logger>();

  HomeCubit(this._userRepository, this._rackRepositoryRest, this._bookingRepositoryRest) : super(HomeState(user: UserModel.empty()));

  @override
  HomeState copyStateWithEffects(HomeState state, List<AppEffect> effects) {
    return state.copyWith(effects: effects);
  }

  @override
  Logger get logger => _logger;

}
