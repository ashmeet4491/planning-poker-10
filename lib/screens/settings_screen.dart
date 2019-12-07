import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_app_bar.dart';
import '../providers/settings.provider.dart';

class SettingsScreen extends StatelessWidget {
    Widget _listItemBuilder(
      {@required String title,
      @required String subtitle,
      @required String key,
      @required providerHandler,
      @required Map<String, bool>settings}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: settings[key],
      onChanged: (bool value) {
        providerHandler.changeSettings(key, value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<Settings>(context);
    final Map<String, bool> settings = settingsProvider.settings;
    return Scaffold(
      appBar: CustomAppBar(title: 'Settings', showIcon:false),
      body: Container(
        child: Column(
          children: <Widget>[
            _listItemBuilder(
              title: 'Vertical swipe',
              subtitle: 'Change default swipe mode',
              key: 'vertical_swipe',
              providerHandler: settingsProvider,
              settings: settings,
            ),
             _listItemBuilder(
              title: 'Loop',
              subtitle: 'Allow to infinity scrool',
              key: 'loop',
              providerHandler: settingsProvider,
              settings: settings,
            )
          ],
        ),
      ),
    );
  }
}
