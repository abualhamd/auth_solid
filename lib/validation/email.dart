import 'package:auth_solid/validation/input_interface.dart';

class EmailInput extends InputInterface {
  @override
  bool validate() {
    if (value == null || value!.isEmpty) {
      return false;
    }

    final pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value!);
  }
}
