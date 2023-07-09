import '../validation/user_input.dart';

class User {
  String name;
  String email;
  String password;
  String? adress;

  User(
      {required this.name,
      required this.email,
      required this.password,
      this.adress});

  factory User.fromDefaultUserInput({required UserInputDefaultImpl userInput}) {
    return User(
        name: userInput.nameInput.value!,
        email: userInput.emailInput.value!,
        password: userInput.passwordInput.value!);
  }
}
