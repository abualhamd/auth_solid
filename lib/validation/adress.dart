import 'package:auth_solid/validation/input_interface.dart';

class AdressInput extends InputInterface {
  @override
  bool validate() => value != null && value!.isNotEmpty;
}
