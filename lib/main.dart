

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'DialogBox.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF8BC34A)),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  DialogBox dialogBox = new DialogBox();

  StreamSubscription<DataConnectionStatus> listener;
  /* this function will call when you pressed on start button and this function will check internet connection
   with the help of checkerInternet() function if  your device is connected to the internet then new HomePage 
   Activity will open if no then show error msg*/

  internetConnnection() async {
    DataConnectionStatus status = await checkerInternet();

    if (status == DataConnectionStatus.connected) {
      // we can proceed

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false);
    } else {
      dialogBox.information(context, "No Internet Connection",
          "Please Check Your Internet Connection and try again");
    }
  }
  // 
@override
 void initState(){
   super.initState();

   internetConnnection();
     
     

 }
  
 

  @override
  void dispose() {
    listener.cancel();
    super.dispose();
  }

// for Internet Connectvity it will check your internet connection
  checkerInternet() async {
    print("The statement 'this machine is connected to the Internet' is: ");
    print(await DataConnectionChecker().hasConnection);
    // returns a bool

    // We can also get an enum value instead of a bool
    print("Current status: ${await DataConnectionChecker().connectionStatus}");
    // prints either DataConnectionStatus.connected
    // or DataConnectionStatus.disconnected

    // This returns the last results from the last call
    // to either hasConnection or connectionStatus
    print("Last results: ${DataConnectionChecker().lastTryResults}");

    // actively listen for status updates
    // this will cause DataConnectionChecker to check periodically
    // with the interval specified in DataConnectionChecker().checkInterval
    // until listener.cancel() is called
    listener = DataConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case DataConnectionStatus.connected:
          print('Data connection is available.');
          break;
        case DataConnectionStatus.disconnected:
          print('You are disconnected from the internet.');
          break;
      }
    });

    return await DataConnectionChecker().connectionStatus;
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: Stack(
       fit: StackFit.expand,
       children: <Widget>[
         Container(
           decoration: BoxDecoration(color: Colors.green[500]),

           
         ),

         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60.0,
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.red,
                        size: 60,
                        ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0)
                    ),
                    Text(
                    "MARKEET",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,

                    ),
                      )
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    ),
                    Text(
                      "Online Store for Everyone",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                      )
                ],
              ),
            )
          ],
         )
       ],
     ),
     
    );
  }
}

Widget logo() {
  return new Hero(
    tag: 'hero',
    child: new CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 110.0,
      child: Image.asset('images/app_logo.png'),
    ),
  );
}
