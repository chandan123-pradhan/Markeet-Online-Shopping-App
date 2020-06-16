import 'package:flutter/material.dart';



class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Order History"),
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
           
          child: new Text("This is History"),
          )
            
            
          ]
        ),
      ),
      
    );
  }
}