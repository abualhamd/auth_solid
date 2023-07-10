import 'package:auth_solid/data_classes/data_classes.dart';
import 'package:auth_solid/entities/user.dart';
import 'package:auth_solid/helpers/create_user.dart';
import 'package:auth_solid/helpers/shared_prefs.dart';
import 'dart:io';

void main() async {
  // static SharedPreferences prefs = await SharedPreferences.getInstance();
  final userInput = UserInputTypeImpl.userInputDefaultImpl;
  // UserInputAdressImpl();
  // UserInputImplType.withAdress.getInputImpl();

  print('Enter your name: ');
  userInput.nameInput.value = stdin.readLineSync();
  print('Enter your email');
  userInput.emailInput.value = stdin.readLineSync();
  print('Enter your password');
  userInput.passwordInput.value = stdin.readLineSync();
  // print('Enter your address');
  // userInput.adressInput.value = stdin.readLineSync();

  print('validation: ${userInput.validate()}');

  if (userInput.validate() == true) {
    final token = DummyUserCreation()
        .createUser(user: User.fromDefaultUserInput(userInput: userInput));
    final created =
        await SharedPrefsImpl().setString(key: 'token', value: token);
    print('User created: $created');
    print('token: ${SharedPrefsImpl().getString(key: 'token')}');
  }
}
