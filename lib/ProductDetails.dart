import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:markeet/BuyNowScreen.dart';
import 'AddToCart.dart';
import 'ToastMessage.dart';


class ProductDetails extends StatefulWidget {
  final product_details_name;

  final product_details_new_prise;
  final product_details_old_prise;
  final product_details_picture;
  final product_details_description;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_prise,
    this.product_details_old_prise,
    this.product_details_picture,
    this.product_details_description,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text(widget.product_details_name),
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
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => AddToCart()));
            },
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.only(top: 10),
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.transparent,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.product_details_old_prise}",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_details_new_prise}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                ),
              ),
            ),
          ),

          Divider(),
          Container(
            color: Colors.white,
            child: new ListTile(
               
            title: Text("Product Details:",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17)),
            subtitle: SelectableText("${widget.product_details_description}",
            showCursor: true,
            cursorWidth: 5,
            cursorColor: Colors.yellow,
            cursorRadius: Radius.circular(5),
            style: TextStyle(fontSize: 16,color: Colors.black),),
          ),
        
          ),
          Divider(),
          SizedBox(height: 20,),

         Container(
           height: 50,
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: FlatButton(
            color: Colors.green,
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => BuyNowScreen()));

          },
           child: Text("BUY NOW",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
         ),

           SizedBox(height: 20,),
       

       


          //Text(widget.product_details_description),
        ],
      ),
      bottomNavigationBar: new BottomAppBar(
      color: Colors.green,
      child: Container(
        color: Colors.blue,
          child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
         
          new Container(
            child: FlatButton(
            color: Colors.blue,
            
           child: Text("ADD TO CART",
           style: TextStyle(
           fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
            
            onPressed: () {
               toast("Add to Shopping Cart",);
            },
          ),),
        
        ],
      )),
      )
    );
  
    
    
  }
}
