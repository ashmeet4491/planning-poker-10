import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Icon icon;
  final String title;
  final bool showIcon;

  CustomAppBar(
      {this.icon = const Icon(Icons.settings),
      this.title = 'Planning Poker',
      this.showIcon = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: showIcon ? <Widget>[
        IconButton(
          icon: icon,
          onPressed: () {
            Navigator.of(context).pushNamed('/settings');
          },
        ),
      ] : null,
      backgroundColor: Colors.lightBlueAccent,
      elevation: 0,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
