import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobbsScreen extends StatelessWidget {
  const JobbsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("Hi,Miranda West",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.white60,
         
            
          Image.asset('assets/icons/location.png'),
       
                        
                        Text("New York,90001"),
                         Image.asset('assets/icons/dd.png'),
           
            
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
