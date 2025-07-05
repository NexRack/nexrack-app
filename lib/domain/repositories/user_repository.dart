abstract class UserRepository {
  Future<void> authenticateUser(String email, String password);
}
