// External dependencies
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/core/log/logger.dart';
import 'package:nexrack_app/core/services/api/http/http_service.dart';
import 'package:nexrack_app/core/services/effects/app_effect_handler.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Logger
  sl.registerLazySingleton<Logger>(() => getLogger());

  // Services
  sl.registerLazySingleton<HttpService>(() => HttpService());
  sl.registerLazySingleton<AppEffectHandler>(() => AppEffectHandler());

  // Repositories
  sl.registerLazySingleton<UserRepositoryRest>(() => UserRepositoryRest());

  // Cubits / Blocs
  sl.registerFactory(() => LoginCubit(sl()));
}