import 'package:flutter/cupertino.dart';

class Settings with ChangeNotifier {
  Map<String, bool> _settings = {'vertical_swipe': false, 'loop': true};
  Map<String, bool> get settings {
    return {..._settings};
  }

  void changeSettings(String key, bool value) {
    _settings[key] = value;
    notifyListeners();
  }
}
