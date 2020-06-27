import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class WorldTime{

  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  void getTime() async{

    try {
      //Make request
      Response response = await get('http://worldtimeapi.org/timezone/');
      Map map = jsonDecode(response.body);

      //get properties from state
      String dateTime = map['dateTime'];
      String offset = map['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    } catch(e){
      print("Error Could Not Get Time");
      time = "Time not found";
    }

  }

}