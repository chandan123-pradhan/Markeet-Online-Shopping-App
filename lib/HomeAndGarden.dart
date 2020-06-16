import 'package:flutter/material.dart';
import 'HomeAndGardenProductItems.dart';
import 'AddToCart.dart';


class HomeAndGarden extends StatefulWidget {
  @override
  _HomeAndGardenState createState() => _HomeAndGardenState();
}

class _HomeAndGardenState extends State<HomeAndGarden> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Home and Garden"),backgroundColor: Colors.green[300],
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