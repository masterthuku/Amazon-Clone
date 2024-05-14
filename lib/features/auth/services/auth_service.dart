import 'package:amazone/models/user.dart';

class AuthService {
  //sign-up user

  void signUpUser(
      {required String email,
      required String password,
      required String name}) async {
    try {
      User user = User(
          id: '',
          name: name,
          password: password,
          email: email,
          address: '',
          type: '',
          token: '');
    } catch (e) {}
  }
}
