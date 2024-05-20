import 'package:studify/common/models/user.dart';

class AuthService {
  Future<User> login(String username, String password) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    if (username == 'teacher') {
      return User(id: '1', role: 'teacher');
    } else if (username == 'parent') {
      return User(id: '2', role: 'parent');
    } else if (username == 'admin') {
      return User(id: '3', role: 'admin');
    } else {
      throw Exception('Invalid credentials');
    }
  }
}
