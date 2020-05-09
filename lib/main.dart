import 'package:flutter/material.dart';
import 'package:planning_poker/home.dart';
import 'package:planning_poker/load.dart';
import 'package:provider/provider.dart';
import 'package:planning_poker/home.dart';
import 'package:planning_poker/screens/create_room.dart';
import 'package:planning_poker/load.dart';

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
        initialRoute: '/home',
        title: 'Planning Poker',
        routes: {
          '/load':(ctx)=>load(),

          '/home':(ctx)=>Home(),
          '/': (ctx) => CardsScreen(),
          '/settings': (ctx) => SettingsScreen(),
          '/create_room':(ctx)=>create_room(),

        },
      ),
    );
  }
}
