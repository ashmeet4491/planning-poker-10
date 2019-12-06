import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Icon icon;
  final String title;
  final Function handler;

  CustomAppBar(this.icon, this.handler, this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext builder) {
          return IconButton(
              icon: icon,
              onPressed: handler);
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      elevation: 0,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
