import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map map = {};

  @override
  Widget build(BuildContext context) {

    map = ModalRoute.of(context).settings.arguments;
    print(map);
    
    return Scaffold(
      body: SafeArea(child: RaisedButton.icon(onPressed: () { Navigator.pushNamed(context, '/location');}, icon: Icon(Icons.my_location), label: Text("View Location")))
    );
  }
}
