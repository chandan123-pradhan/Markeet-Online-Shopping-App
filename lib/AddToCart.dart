import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  

 
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink, title: Text("Shopping Cart"),
      actions: <Widget>[
         new IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: () {


            },
         ),
      ],
      ),


    );
  }
}