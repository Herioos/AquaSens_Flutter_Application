// lib/user_repository.dart
class UserRepository {
  static final UserRepository _instance = UserRepository._internal();
  factory UserRepository() => _instance;

  UserRepository._internal();

  final List<_User> _users = [];

  bool register(String name, String email, String password) {
    if (_users.any((user) => user.email == email)) {
      return false; // ya existe
    }
    _users.add(_User(name, email, password));
    return true;
  }

  bool login(String email, String password) {
    return _users.any(
      (user) => user.email == email && user.password == password,
    );
  }
}

class _User {
  final String name;
  final String email;
  final String password;

  _User(this.name, this.email, this.password);
}
