import 'package:flutter/material.dart';
import 'package:markeet/AddToCart.dart';
import 'BeautiAndHealthProductsItems.dart';


class BeautiAndHealth extends StatefulWidget {
  @override
  _BeautiAndHealthState createState() => _BeautiAndHealthState();
}

class _BeautiAndHealthState extends State<BeautiAndHealth> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Beauty and Health"),backgroundColor: Colors.purple[300],
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