import '../entities/user.dart';

abstract class UserCreation {
  String createUser({required User user});
}

class DummyUserCreation implements UserCreation {
  @override
  String createUser({required User user}) {
    print('created user ${user.name}');
    return 'token';
  }
}
