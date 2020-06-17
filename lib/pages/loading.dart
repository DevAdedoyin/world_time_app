import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState is Called First");
  }

  @override
  Widget build(BuildContext context) {
    print("Build is called next");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Location"),
      ),
    );
  }
}
