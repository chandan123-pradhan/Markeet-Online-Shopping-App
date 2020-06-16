import 'package:flutter/material.dart';
import 'GadgetsAndComputerProductsItems.dart';
import 'AddToCart.dart';


class GadetsAndComputer extends StatefulWidget {
  @override
  _GadetsAndComputerState createState() => _GadetsAndComputerState();
}

class _GadetsAndComputerState extends State<GadetsAndComputer> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(title: Text("Gadgets and Computer"),backgroundColor: Colors.indigoAccent[300],
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
         
        ],),

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