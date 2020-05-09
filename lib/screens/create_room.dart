import 'package:flutter/material.dart';
class create_room extends StatefulWidget {
  @override
  _create_roomState createState() => _create_roomState();
}

class _create_roomState extends State<create_room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RaisedButton(
              color: Colors.blue,
              onPressed: ()
              {},
              child: Text(
                'Generate room id',
              style:
              TextStyle(
                color: Colors.white,
              )),
            ),
          ],
        ),

      ),
    );
  }
}
