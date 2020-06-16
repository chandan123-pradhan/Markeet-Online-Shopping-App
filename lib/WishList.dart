import 'package:flutter/material.dart';


class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Wishlist"),
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
           
          child: new Text("This is Wishlist"),
          )
            
            
          ]
        ),
      ),
      
    );
  }
}