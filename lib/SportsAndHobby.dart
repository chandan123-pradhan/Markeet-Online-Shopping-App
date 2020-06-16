import 'package:flutter/material.dart';
import 'SportsAndHobbyProductItem.dart';
import 'AddToCart.dart';



class SportsAndHobby extends StatefulWidget {
  @override
  _SportsAndHobbyState createState() => _SportsAndHobbyState();
}

class _SportsAndHobbyState extends State<SportsAndHobby> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(title: Text("Sports and Hobby"),backgroundColor: Colors.red[300],
      actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {

            },
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => AddToCart()));
            },
          ),
        ],
        ),

        body: ListView(
        children: <Widget>[
          
          Container(
           
            height: 480,
            child: Products(),
          ),
        
         
        ],
),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.search,color: Colors.white,),
       backgroundColor: Colors.yellow,
       onPressed: (){
         // for searching
       },
       ),
   );
  }
}