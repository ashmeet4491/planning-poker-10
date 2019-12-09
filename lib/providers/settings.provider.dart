import 'package:flutter/cupertino.dart';

class Settings with ChangeNotifier {
  Map<String, dynamic> _settings = {
    'vertical_swipe': false,
    'loop': true,
    'favorite': '8',
    'lock': false
  };
  Map<String, dynamic> get settings {
    return {..._settings};
  }

  void changeSettings(String key, dynamic value) {
    _settings[key] = value;
    notifyListeners();
  }

  void lockCard(String value) {
    _settings['lock'] != false
        ? _settings['lock'] = false
        : _settings['lock'] = value;
    notifyListeners();
  }
}
