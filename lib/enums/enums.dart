import '../validation/user_input.dart';

enum UserInputImplType {
  defaultImpl,
  withAdress;

  UserInput getInputImpl() {
    return switch (this) {
      defaultImpl => UserInputDefaultImpl(),
      withAdress => UserInputAdressImpl(),
    };
  }
}
