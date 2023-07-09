abstract class InputInterface {
  String? _value;

  String? get value => _value;

  set value(String? value) {
    _value = value;
  }

  bool validate();
}
