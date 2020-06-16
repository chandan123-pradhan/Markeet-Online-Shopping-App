import 'package:flutter/material.dart';

class DialogBox
{
  information(BuildContext context, String title , String description)
  {
    return showDialog
    (
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context)
        {
          return AlertDialog
          (
              title: Text(title,style: 
              TextStyle(fontWeight: FontWeight.bold),
              ),

              content: SingleChildScrollView
              (
                child: ListBody
                (
                  children: <Widget>[
                    Text(description,style:
                    TextStyle(color: Colors.black54)),
                  ],
                ),
              ),

              actions: <Widget>[
                FlatButton
                (
                  child: Text("OK",style:
                    TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: (){
                    return Navigator.pop(context);
                  },
                )
          
              ],

          );
        }
    );
  }
}