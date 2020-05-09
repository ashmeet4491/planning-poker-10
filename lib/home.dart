import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planning_poker/load.dart';

class Home  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Planning Poker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton
              (
              color: Colors.blue[900],
              onPressed: ()
              {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Enter a room',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

            ),
            RaisedButton
              (
              color: Colors.blue[900],
              onPressed: ()
              {
                Navigator.pushNamed(context, '/create_room');
              },
              child: Text(
                'Create a room',
                style: TextStyle(
                  color:Colors.white,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
