import 'package:flutter/material.dart';


class Rate extends StatefulWidget {
  @override
  _RateState createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Rate"),
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
           
          child: new Text("This is Rate "),
          )
            
            
          ]
        ),
      ),
      
    );
  }
}