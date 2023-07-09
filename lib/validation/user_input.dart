import 'package:auth_solid/validation/adress.dart';
import 'package:auth_solid/validation/email.dart';
import 'package:auth_solid/validation/name.dart';
import 'package:auth_solid/validation/password.dart';

abstract class UserInput {
  factory UserInput() = UserInputDefaultImpl;
  bool validate();
}

class UserInputDefaultImpl implements UserInput {
  NameInput nameInput = NameInput();
  EmailInput emailInput = EmailInput();
  PasswordInput passwordInput = PasswordInput();

  @override
  bool validate() =>
      nameInput.validate() && emailInput.validate() && passwordInput.validate();
}

class UserInputAdressImpl extends UserInputDefaultImpl {
  AdressInput adressInput = AdressInput();

  @override
  bool validate() => super.validate() && adressInput.validate();
}
