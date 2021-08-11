import 'package:bottom_navigation_app/jobbsscreen.dart';
import 'package:flutter/material.dart';


 
     AppBar homeappbar(BuildContext context){
       return AppBar(
        backgroundColor: Colors.white38,
        shadowColor: Colors.transparent,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {

          },
          iconSize: 20,
          icon: Icon(Icons.arrow_back),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JobbsScreen()),
                    );
            },
          ),
        ],
      
    );
  }
