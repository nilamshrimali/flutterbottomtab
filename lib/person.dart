import 'package:bottom_navigation_app/ChairUIScreen.dart';
import 'package:flutter/material.dart';
class PersonScreen extends StatelessWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
     ElevatedButton(
                    child: Text(
                      'Clicked me',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF19BF8A),
                      onPrimary: Colors.white,
                      onSurface: Colors.grey,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FurnitureUI()),
                    );
                    },
                  ),
                  ),
    );
                         
                        
                      
  }
}
