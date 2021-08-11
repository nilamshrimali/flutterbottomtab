import 'package:flutter/material.dart';

class ChairScreen extends StatelessWidget {
  const ChairScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "120 Products",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
                DropdownButton<String>(
                  items: [
                    DropdownMenuItem<String>(
                      value: "1",
                      child: Text(
                        "5 items",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "2",
                      child: Text(
                        "10 items",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "3",
                      child: Text(
                        "15 items",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                  onChanged: (_value) => {print(_value.toString())},
                  hint: Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //crossAxisSpacing: 15,
                    mainAxisSpacing: 7,
                    //crossAxisSpacing:20,
                    crossAxisCount:2),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8,vertical:4),
                        child: Card(
                         
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/icons/chair1.jpg'),
                                width: 70,
                                height: 80,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Amos Chair",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "A modern take on best tradition",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black38),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "\$680",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                
                       
                      
                      Positioned(
                              top: 147,right:11,
                              child: Container(
                               // padding: EdgeInsets.fromLTRB(8, 60, 15,27),
                                              width: 35,
                                              height: 35,
                                              color: Color(0xFFFEDB66),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.shopping_bag,color: Colors.white,),
                                                  iconSize:19,
                                                ),
                                              ),),
                            ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
