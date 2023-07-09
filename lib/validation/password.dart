import 'package:auth_solid/validation/input_interface.dart';

class PasswordInput extends InputInterface {
  @override
  bool validate() => value != null && value!.isNotEmpty && value!.length > 7;
}
