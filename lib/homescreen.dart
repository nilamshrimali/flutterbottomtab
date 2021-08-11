import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:const Color(0xFF0000000D),
      body: SafeArea(
        
        child: Stack(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 410,
                    color: const Color(0xFF19BF8A),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 45),
                          child:Container(
                            child: Column(
                              children: [

                                 IconButton(
                                icon: new Image.asset('assets/icons/avotar.png'),
                                iconSize: 78,
                                color: Colors.green,
                                onPressed: () {},
                              ),
                              Positioned(
                               //top: 180,right: 200,bottom: 30,
                                child: 
                              Image(image: AssetImage('assets/icons/r2.png'),
                            width: 15,height:16,
                              ),
                              // IconButton(
                              //   icon: new Image.asset('assets/icons/r2.png'),

                              //   iconSize: 10,
                              //   //color: Colors.green,
                              //   onPressed: () {},
                              // ),
                              ),
                              ],
                              
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kristina Teylor",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Plumber",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            )
                          ],
                        ),
                        IconButton(
                          icon: new Image.asset('assets/icons/bell.png'),
                          iconSize: 90,
                          color: Colors.green,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
             ListView(
               padding: const EdgeInsets.symmetric(vertical: 180,horizontal: 40),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          
                          child: ListTile(
                            leading: Text("Service Provider Mode",style: TextStyle(fontSize: 16),),
                            trailing: Icon(
                              Icons.toggle_on,
                              size: 50,
                              color: const Color(0xFF19BF8A),
                            ),
                          ),
                        ),
                      ),
                      
                      Card(
                        elevation: 2,
                        child: ListTile(
                          leading: Text("Show Online Status",style: TextStyle(fontSize: 16),),
                          trailing: Icon(
                            Icons.toggle_on,
                            size: 50,
                            color: const Color(0xFF19BF8A),
                          ),
                        ),
                      ),
                       
                      Card(
                        child: ListTile(
                          leading: Text("Account Details",style: TextStyle(fontSize: 16),),
                          trailing: IconButton(
                          icon: new Image.asset('assets/icons/arrow.png'),
                          iconSize: 40,
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                        ),
                      ),
                       SizedBox(height:5
                      ),
                      Card(
                        child: ListTile(
                          leading: Text("Transactions",style: TextStyle(fontSize: 16),),
                          trailing: IconButton(
                          icon: new Image.asset('assets/icons/arrow.png'),
                          iconSize: 40,
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                        ),
                      ),
                      
                      Card(
                        child: ListTile(
                          leading: Text("Setting",style: TextStyle(fontSize: 16),),
                           trailing: IconButton(
                          icon: new Image.asset('assets/icons/arrow.png'),
                          iconSize: 40,
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                         ),
                      ),
                       
                       Card(

                         //color: const Color(0xFF0000000D),  //0xff00000029
                         child: ListTile(
                           leading: Text("Invite Clients",style: TextStyle(fontSize: 16),),
                           trailing: IconButton(
                          icon: new Image.asset('assets/icons/arrow.png',
                         ),
                          iconSize: 40,
                          
                         // color: const Color(0xFF19BF8A),
                          onPressed: () {},
                        ),
                         ),
                       ),
                        
                        Card(
                          child: ListTile(
                           leading: Text("Log Out",style: TextStyle(fontSize: 16),),
                           trailing: IconButton(
                          icon: new Image.asset('assets/icons/arrow.png'),
                          iconSize: 40,
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                                               ),
                        ),
                         
                       Card(
                          child: ListTile(
                          leading: Text("Feedback",style: TextStyle(fontSize: 16),),
                           trailing: IconButton(
                          icon: new Image.asset('assets/icons/arrow.png'),
                          iconSize: 40,
                          color: Colors.green,
                          onPressed: () {},
                        ),
                                               ),
                        ),
                    ],
                  ),
                
              ],
            )
          
        ),
        //
      
    );
  }
}
