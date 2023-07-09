import 'package:auth_solid/enums/enums.dart';
import 'package:auth_solid/validation/user_input.dart';
import 'dart:io';

void main() {
  final userInput =
      UserInputImplType.defaultImpl.getInputImpl();

  print('Enter your name: ');
  userInput.nameInput.value = stdin.readLineSync();
  print('Enter your email');
  userInput.emailInput.value = stdin.readLineSync();
  print('Enter your password');
  userInput.passwordInput.value = stdin.readLineSync();

  print('validation: ${userInput.validate()}');
}
