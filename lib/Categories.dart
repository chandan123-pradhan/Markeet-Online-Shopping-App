import 'package:flutter/material.dart';
import 'package:markeet/BabiesAndKids.dart';
import 'package:markeet/BeautiAndHealth.dart';
import 'package:markeet/Fashion.dart';
import 'package:markeet/GadgetsAndComputer.dart';
import 'package:markeet/HomeAndGarden.dart';
import 'package:markeet/ProductDiscount.dart';
import 'package:markeet/ServicesAndFood.dart';

import 'package:markeet/SportsAndHobby.dart';


class CategoriesForDiscount extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForDiscount({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => ProductDiscount()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}



class CategoriesForFashion extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForFashion({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => Fashion()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}






class CategoriesForBeauti extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForBeauti({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => BeautiAndHealth()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}


class CategoriesForBabies extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForBabies({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => BabiesAndKids()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}





class CategoriesForHome extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForHome({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => HomeAndGarden()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}


class CategoriesForGadgets extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForGadgets({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => GadetsAndComputer()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}


class CategoriesForSports extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForSports({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => SportsAndHobby()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}


class CategoriesForServices extends StatelessWidget {
  final String image_title;
  final String image_caption;
  

  CategoriesForServices({
    this.image_title,
    this.image_caption,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
         
 Navigator.of(context).push(MaterialPageRoute(
 builder: (BuildContext context) => ServicesAndFood()));


        },
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 2, 2),
            child: Text(
              image_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}











































