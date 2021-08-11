import 'package:bottom_navigation_app/camara.dart';
import 'package:bottom_navigation_app/homescreen.dart';
import 'package:bottom_navigation_app/person.dart';
import 'package:bottom_navigation_app/serachscreen.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  //const FirstPage({Key? key}) : super(key: key);
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _currentIndex = 0;
  final screen = [
    HomeScreen(),
    SerchScreen(),
    CamaraScreen(),
    PersonScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        //currentIndex: _currentIndex,
        //onTap: (index) => setState(()=> _currentIndex=index),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        //backgroundColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.cyan,
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            //backgroundColor: Colors.purple,
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            backgroundColor: Colors.orange[200],
            title: Text('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.green[200],
            title: Text('Person'),
          ),
        ],
      ),
    );
  }
}
