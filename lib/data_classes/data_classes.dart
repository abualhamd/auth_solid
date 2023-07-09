import '../validation/user_input.dart';

// enum UserInputImplType {
//   defaultImpl,
//   withAdress;

//   UserInput getInputImpl() {
//     return switch (this) {
//       defaultImpl => UserInputDefaultImpl(),
//       withAdress => UserInputAdressImpl(),
//     };
//   }
// }

abstract class UserInputTypeImpl {
  static final userInputDefaultImpl = UserInputDefaultImpl();
  static final userInputAdressImpl = UserInputAdressImpl();
}
