import 'package:flutter/material.dart';
import 'BabiesAndKidsProductsItem.dart';
import 'AddToCart.dart';


class BabiesAndKids extends StatefulWidget {
  @override
  _BabiesAndKidsState createState() => _BabiesAndKidsState();
}

class _BabiesAndKidsState extends State<BabiesAndKids> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Babies and Kids"),backgroundColor: Colors.yellow,
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