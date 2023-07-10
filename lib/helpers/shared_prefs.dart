abstract class SharedPrefs {
  Future<bool> setString({required String key, required String value});
  String? getString({required String key});
}

class SharedPrefsImpl implements SharedPrefs {
  @override
  String? getString({required String key}) {
    return 'some value';
  }

  @override
  Future<bool> setString({required String key, required String value}) async {
    return true;
  }
}

//TODO implement it using shared prefrences package
// class SharedPrefsImpl2 implements SharedPrefs {
//   static late SharedPreferences _prefs;
//   static Future<void> init() async {
//     _prefs = await SharedPreferences.getInstance();
//   }

//   @override
//   String? getString({required String key}) {
//     return _prefs.getString(key);
//   }

//   @override
//   Future<bool> setString({required String key, required String value}) async {
//     return await _prefs.setString(key, value);
//   }
// }
