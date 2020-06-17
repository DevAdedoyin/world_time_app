import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  void getData () async{
    
    String lastName = await Future.delayed(Duration(seconds: 10), (){
      return "Israel";
    });

    String firstName = await Future.delayed(Duration(seconds: 3), (){
      return "Adedoyin";
    });

    print("$lastName - $firstName");

    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print("initState is Called First");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Location"),
      ),
    );
  }
}
