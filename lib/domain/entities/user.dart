/// Represents a user entity.
///
/// The [User] type defines the basic properties of a user, including:
/// - [id]: The unique identifier for the user.
/// - [name]: The user's display name.
/// - [email]: The user's email address.
abstract class User {
  final String name;

  User({required this.name});
}
