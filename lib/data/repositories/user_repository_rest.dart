// External Dependencies
import 'package:logger/logger.dart';

// Internal Dependencies
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/domain/repositories/user_repository.dart';

class UserRepositoryRest implements UserRepository {
  final Logger _logger = sl<Logger>();

  @override
  Future<void> authenticateUser(String name) async {
    _logger.i("Calling REST API to authenticate user with email: $name");
  }
}
