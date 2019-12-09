import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/settings_screen.dart';
import './screens/cards_screen.dart';

import './providers/settings.provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>Settings(),
      child: MaterialApp(
        title: 'Planning Poker',
        routes: {
          '/': (ctx) => CardsScreen(),
          '/settings': (ctx) => SettingsScreen(),
        },
      ),
    );
  }
}
