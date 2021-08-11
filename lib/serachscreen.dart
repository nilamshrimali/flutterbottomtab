import 'package:flutter/material.dart';

class SerchScreen extends StatelessWidget {
  const SerchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      "Chat",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image(
                              image: AssetImage("assets/icons/f2.png"),
                              fit: BoxFit.fill),
                        ),
                        
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mary Jane",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Thank you so much!",
                            style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
width: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("23 mins",style: TextStyle(color: Color(0xFF8A8A8F),),),
                            Container(
                              height: 27,width: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red[200],
                                ),
                              child: Center(child: Text("3",style: TextStyle(color: Colors.white),)),
                            ),],
                        ),
                      ),
                    ],
                  )
                ],
              ),
               SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image(
                              image: AssetImage("assets/icons/f2.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jenny Kat",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "You know,I've had some beers just..",
                            style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("45 mins",style: TextStyle(color: Color(0xFF8A8A8F),),),
                            Container(
                              height: 27,width: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red[200],
                                ),
                              child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                            ),],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
            ],
            
          ),
        ),
      ),
    );
  }
}
