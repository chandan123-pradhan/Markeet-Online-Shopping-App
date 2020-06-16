import 'package:flutter/material.dart';


class NotificationAcitvity extends StatefulWidget {
  @override
  _NotificationAcitvityState createState() => _NotificationAcitvityState();
}

class _NotificationAcitvityState extends State<NotificationAcitvity> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Notification"),
       actions: <Widget>[
          new IconButton(icon: Icon(Icons.delete,color: Colors.white,),
          
          onPressed: (){
            
          },),

        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
        

          children:< Widget>[
          Container(
           padding: EdgeInsets.all(10),
           
          child: new Text("This is Notification"),
          )
            
            
          ]
        ),
      ),
      
    );
  }
}