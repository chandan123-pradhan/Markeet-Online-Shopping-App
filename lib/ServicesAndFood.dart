import 'package:flutter/material.dart';
import 'ServicesAndFoodProductItems.dart';
import 'AddToCart.dart';


class ServicesAndFood extends StatefulWidget {
  @override
  _ServicesAndFoodState createState() => _ServicesAndFoodState();
}

class _ServicesAndFoodState extends State<ServicesAndFood> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Services and Food"),backgroundColor: Colors.tealAccent,
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