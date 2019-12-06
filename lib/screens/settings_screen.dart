import 'package:flutter/material.dart';
import 'package:planning_poker/widgets/custom_app_bar.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _swipe = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(Icon(Icons.arrow_back), () {
        Navigator.of(context).pop();
      }, 'Settings')
          .build(context),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: Text('Vertical swipe'),
              subtitle: Text('Change default swipe mode'),
              value: _swipe,
              onChanged: (bool value) {
                setState(() {
                  _swipe = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
