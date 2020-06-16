import 'package:flutter/material.dart';


class SettingsActivity extends StatefulWidget {
  @override
  _SettingsActivityState createState() => _SettingsActivityState();
}

class _SettingsActivityState extends State<SettingsActivity> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Settings"),
       actions: <Widget>[
        

        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
        

          children:< Widget>[
          Container(
           padding: EdgeInsets.all(10),
           
          child: new Text("This is Settings "),
          )
            
            
          ]
        ),
      ),
      
    );
  }
}