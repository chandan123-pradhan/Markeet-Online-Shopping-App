import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'WishList.dart';
import 'OrderHistory.dart';
import 'DialogBox.dart';

import 'SettingsActivity.dart';

import 'NotificationActivity.dart';
import 'Rate.dart';
import 'Categories.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'AddToCart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DialogBox dialogBox = new DialogBox();
  @override
  Widget build(BuildContext context) {
    Widget image_carsousal = new Container(

        height: 200.0,
        child: new Carousel(
          
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/img1.jpg'),
            AssetImage('images/img2.jpg'),
            AssetImage('images/img3.png'),
            AssetImage('images/img4.png'),
            AssetImage('images/img5.jpg'),
          ],
          autoplay: true,
          dotSize: 4.0,
          dotColor: Colors.yellow,
          indicatorBgPadding: 2.0,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(microseconds: 1000),
        ));

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text("Markeet"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // for searching operation
            },
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.yellow,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => AddToCart()));
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            //header

            _craeteHeader(),

            InkWell(
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(Icons.shopping_cart, color: Colors.blue),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AddToCart()));
                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Wishlist"),
                leading: Icon(Icons.bookmark_border, color: Colors.blue),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => WishList()));
                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Order History"),
                leading: Icon(Icons.watch_later, color: Colors.blue),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => OrderHistory()));
                },
              ),
            ),

            InkWell(
              child: ListTile(
                title: Text("Notification"),
                leading: Icon(Icons.notification_important, color: Colors.blue),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          NotificationAcitvity()));
                },
              ),
            ),

            SizedBox(height: 30),
            Text(
              "Others",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

          
            InkWell(
              child: ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings, color: Colors.blue),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SettingsActivity()));
                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Rate"),
                leading: Icon(Icons.rate_review, color: Colors.blue),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Rate()));
                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.blue),
                onTap: () {
                  dialogBox.information(context, "About",
                      "Markeet is an online store that sells various types of products such as clothes, mobile phones, phones, home appliances, and other products. Excellent product quality and Competitive prices");
                },
              ),
            ),
          ],
        ),
      ),
      body: new ListView(children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Text(
            "What's New",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: image_carsousal,
        ),

        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Text(
            "Categories",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
        ),

        // for fashion and discount list item

        Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Row(
              children: <Widget>[
                Container(
                  
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],

                    image: new DecorationImage(
                    
                        image: new AssetImage('images/phone.png'),
                      
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                 
                  child: CategoriesForDiscount(
                    image_title: 'Mobiles & Accessories',
                    image_caption: 'Smart Phones like  Samsong Galaxy M30s,', 
                  ),
                )
              ],
            )),

        // for fashion list item

        Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/fashion.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
               Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForFashion(
                    image_title: 'Fashion',
                    image_caption: "Women's clothing, men's clothing, handbags and",
                  ),
                )
              ],
            )),

          //for Beauti and Health

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/health.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
               Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForBeauti(
                    image_title: 'Beauty and Health',
                    image_caption: "Cosmetics, medicines and personal care tools",
                  ),
                )
              ],
            )),


            // for Babies and Kids

            Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/babieswithtoy.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForBabies(
                    image_title: 'Babies and Kids',
                    image_caption: 'Clothing for babies and children, toys, books,',
                  ),
                )
              ],
            )),

            // for Home and Garden list item

            Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/home.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForHome(
                    image_title: 'Home and Garden',
                    image_caption: 'Home decor, furniture and building materials, hoome',
                  ),
                )
              ],
            )),

            // for Gadgets and Computers list item

            Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/cmp.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForGadgets(
                    image_title: 'Gadgets & Computers',
                    image_caption: 'Laptops, Computers, Keyboards, CPU and',
                  ),
                )
              ],
            )),

            // for Sports andd Hobby list item

            Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/sportimg.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
               Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForSports(
                    image_title: 'Sports and Hobby',
                    image_caption: 'Cricket kit, Balls, FootBalls, Books and',
                  ),
                )
              ],
            )),

            // for Service and Food list item

            Container(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 20),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('images/serviceimg.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  color: Colors.white,
                
                  height: 80,
                  width: 220,
                  child: CategoriesForServices(
                    image_title: 'Food',
                    image_caption: 'Pizza, Burger, Conflex, Sweets and',
                  ),
                )
              ],
            )),

      ]),
    );
  }
}



Widget _craeteHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('images/app_logo2.png'))),
    child: Stack(children: <Widget>[
      Positioned(
        bottom: 12.0,
        left: 16.0,
        child: Text(""),
      )
    ]),
  );
}

