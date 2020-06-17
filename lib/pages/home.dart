import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: RaisedButton.icon(onPressed: () { Navigator.pushNamed(context, '/location');}, icon: Icon(Icons.my_location), label: Text("View Location")))
    );
  }
}
