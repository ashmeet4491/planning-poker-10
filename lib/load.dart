import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:planning_poker/home.dart';
import 'package:planning_poker/main.dart';




class load extends StatefulWidget {
  @override
  _loadState createState() => _loadState();
}

class _loadState extends State<load> {
  @override
  Future<void> nextpage()async {
    Navigator.pushNamed(context,'/home');
  }
  void initState() {
    // TODO: implement initState
    super.initState();

   nextpage();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      body:SpinKitSquareCircle(
        color: Colors.white,
        size: 50.0,

    ),


    );
}}
