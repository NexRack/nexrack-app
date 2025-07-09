// External dependencies
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/core/log/logger.dart';
import 'package:nexrack_app/core/notifier/user_notifier.dart';
import 'package:nexrack_app/core/services/api/http/http_service.dart';
import 'package:nexrack_app/core/services/effects/app_effect_handler.dart';
import 'package:nexrack_app/data/repositories/booking_repository_rest.dart';
import 'package:nexrack_app/data/repositories/rack_repository_rest.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';
import 'package:nexrack_app/application/cubits/home_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Singletons
  sl.registerLazySingleton<Logger>(() => getLogger());

  // Services
  sl.registerLazySingleton<HttpService>(() => HttpService());
  sl.registerLazySingleton<AppEffectHandler>(() => AppEffectHandler());

  // Notifiers
  sl.registerLazySingleton<UserNotifier>(() => UserNotifier());

  // Repositories
  sl.registerLazySingleton<UserRepositoryRest>(() => UserRepositoryRest());
  sl.registerLazySingleton<BookingRepositoryRest>(() => BookingRepositoryRest());
  sl.registerLazySingleton<RackRepositoryRest>(() => RackRepositoryRest());

  // Cubits / Blocs
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl(), sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl(), sl(), sl(), sl()));
}
