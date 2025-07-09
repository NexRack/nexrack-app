import 'package:nexrack_app/data/models/user_model.dart';
import 'package:rxdart/rxdart.dart';

class UserNotifier {
  final BehaviorSubject<UserModel> _userSubject;

  UserNotifier() : _userSubject = BehaviorSubject.seeded(UserModel.empty());

  // Public stream for Cubits to subscribe
  Stream<UserModel> get userStream => _userSubject.stream;

  void updateUser(UserModel user) {
    _userSubject.add(user);
  }

  UserModel get currentUser => _userSubject.value;

  void dispose() => _userSubject.close();
}
