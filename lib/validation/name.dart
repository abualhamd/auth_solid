import 'package:auth_solid/validation/input_interface.dart';

class NameInput extends InputInterface {
  @override
  bool validate() => value != null && value!.isNotEmpty;
}
