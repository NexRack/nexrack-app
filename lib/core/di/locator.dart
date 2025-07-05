// External dependencies
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/application/cubits/login_cubit.dart';
import 'package:nexrack_app/core/log/logger.dart';
import 'package:nexrack_app/core/services/api/http/http_service.dart';
import 'package:nexrack_app/data/repositories/repositories.dart';
import 'package:nexrack_app/domain/repositories/repositories.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Logger
  sl.registerLazySingleton<Logger>(() => getLogger());

  // Services
  sl.registerLazySingleton<HttpService>(() => HttpService());

  // Repositories
  sl.registerLazySingleton<UserRepositoryRest>(() => UserRepositoryRest());

  // Cubits / Blocs
  sl.registerFactory(() => LoginCubit(sl()));
}