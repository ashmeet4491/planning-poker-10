import 'package:flutter/material.dart';
import 'package:planning_poker/widgets/custom_app_bar.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(Icon(Icons.arrow_back), (){Navigator.of(context).pop();}, 'Planning Poker')
    );
  }
}
