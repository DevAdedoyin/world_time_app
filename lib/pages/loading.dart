import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:worldtimeapp/services/world_time.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String time = "Loading";

  Future<void> setupWorldTime() async {
    WorldTime worldtime = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await worldtime.getTime();
    print(worldtime.time);
    setState(() {
      time = worldtime.time;
    });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
     'location' : worldtime.location,
      'flag' : worldtime.flag,
      'time' : worldtime.time
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    print("Build is called next");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(time),
      ),
    );
  }
}
