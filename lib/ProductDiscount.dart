import 'package:flutter/material.dart';
import 'productDescountItems.dart';
import 'AddToCart.dart';
class ProductDiscount extends StatefulWidget {
  @override
  _ProductDiscountState createState() => _ProductDiscountState();
}

class _ProductDiscountState extends State<ProductDiscount> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Product and Discount"),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: (){
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
