import 'package:flutter/material.dart';

import './screens/settings_screen.dart';
import './screens/cards_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planning Poker',
      routes: {
        '/': (ctx) => CardsScreen(),
        '/settings': (ctx) => SettingsScreen(),
      },
    );
  }
}
