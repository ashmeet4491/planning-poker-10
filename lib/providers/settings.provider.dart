import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Settings with ChangeNotifier {
  
  SharedPreferences _prefs;

  Map<String, dynamic> _default_settings = {
    'vertical_swipe': false,
    'loop': true,
    'favorite': '8',
    'lock': false,
    'alternative_layout': false
  };

  Map<String, dynamic> _settings = const {
    'vertical_swipe': false,
    'loop': true,
    'favorite': '8',
    'lock': false,
    'alternative_layout': false
  };

  Settings() {
    loadSettings();
  }

  loadSettings() async {
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.getString('data') == null) {
      _prefs.setString(
        'data',
        jsonEncode(_default_settings),
      );
      _settings = _default_settings;
      notifyListeners();
    } else {
      _settings = jsonDecode(_prefs.getString('data'));
      notifyListeners();
    }
  }

  Map<String, dynamic> get settings {
    return {..._settings};
  }

  void changeSettings(String key, dynamic value) {
    _settings[key] = value;
     _prefs.setString(
        'data',
        jsonEncode(_settings),
      );
    notifyListeners();
  }

  void lockCard(String value) {
    _settings['lock'] != false
        ? _settings['lock'] = false
        : _settings['lock'] = value;
    notifyListeners();
  }
}
