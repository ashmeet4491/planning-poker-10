import 'package:flutter/material.dart';

import './screens/cards_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planning Poker',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          title: Text('Planning Poker'),
        ),
        body: Container(
          color: Colors.lightBlueAccent,
          child: CardsScreen(),
        ),
      ),
    );
  }
}
