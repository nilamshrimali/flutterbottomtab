import 'package:flutter/material.dart';
import 'package:path/path.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key,}) : super(key: key);
 //final int seletedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF19BF8A),
      //  leading: Icon(Icons.arrow_back_ios),
      // ),
      body: SafeArea(
        child: Column(
          //1 column
          children: [
            Expanded(
              flex: 4,
              child: Container(
                //color: Color(0xFF50BD9A),
                color: Color(0xFF19BF8A),
                height: 100,
                child: Column(
                  //2 colum
                  children: [
                    Row(
                      //1 row
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 17,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    //new ...
                    Column(
                      //3 column
                      children: [
                        Stack(
                          children: [
  Container(
                             margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    icon: new Image.asset(
                                        'assets/icons/avotar.png',
                                        width: 60,
                                        height: 60),
                                    iconSize: 65,
                                    color: Colors.green,
                                    onPressed: () {},
                                  ),
                                ),
                              //   Padding(
                              //   padding:
                              //       const EdgeInsets.only(top: 70, left: 25),
                              //   child: Container(
                              //     height: 20,
                              //     width: 50,
                              //     child: Row(
                              //       children: [
                              //         Container(
                              //             height: 23,
                              //             width: 20,
                              //             child: seletedItem == 0
                              //                 ? Image.asset(
                              //                     "assets/icons/staricon.png",
                              //                     fit: BoxFit.cover,
                              //                   )
                              //                 : Image.asset(
                              //                     "assets/icons/staricon.png",
                              //                     height: 5,
                              //                     width: 15,
                              //                     fit: BoxFit.cover,
                              //                   )),
                              //         Text("4.5",
                              //             style: TextStyle(
                              //                 fontSize: 14,
                              //                 )
                              //         )],
                              //     ),
                              //     decoration: BoxDecoration(
                              //       color: Colors.white,
                              //       borderRadius: BorderRadius.circular(9),
                              //     ),
                              //   ),
                              // ),
                               
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Niklaus Mikaelson",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 4),
                                    Text("New York, 90001",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                    SizedBox(height: 4),
                                    Text(
                                      "Plumber, Cleaning",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ), //1 row
                          ),
              
                          ],
                         
                        ),
                        Row(
                          
                          children: [
                            
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              height: 40,
                              width: 135,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                               child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "80%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Job success",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black87),
                                  ),
                                ]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                               height: 40,
                          width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "250",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Total Jobs",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 11),
                              ),
                            ],
                          ),
                            ),
                          ],
                        ),
                      ],
                    ), //2 column
                  ],
                ), //1 colum
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: Color(0xFF0000000D),
                height: 100,
                // main row
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Services:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Plumber: \$120/day",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Cleaning: \$120/day",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Bio",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Text(
                                "Lorem ipsum dolor sit ameter , consetetur sadipscing eliter, sed diam nonumy eirmod tempor invidunt korem and lorin diam to invidunt ut labour et dolor, sed diam volupua.",
                                style: TextStyle(fontSize: 14)),
                          ),
                          SizedBox(height: 4),
                          Text("Customer Reviews:",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("4.5",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star_half_outlined,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "101 Reviews",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          //image row and column
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal:0),
                                // padding: EdgeInsets.symmetric(horizontal:0),
                                child: IconButton(
                                  icon: Image.asset('assets/icons/avtar.png'),
                             iconSize: 20,
                                  onPressed: () {},
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Ruth Stanley",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Reviewed india on 3 April 2019",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black26),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              Icon(
                                Icons.star_half_outlined,
                                size: 15,
                                color: Color(0xFF19BF8A),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("4.5",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          //row
                          Text(
                            "The colors are nice, the fabric is the perfect thickness & lorem dolor sit amet , sed diam noumy.the tshirts are super soft.Honesty love thease so much.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xFFFFFFFF),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text(
                      'Request Service',
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
                      print('Pressed');
                    },
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Color(0xFF19BF8A),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9.0),
                      ),
                      side: BorderSide(color: Color(0xFF19BF8A), width: 2),
                    ),
                    label: Text(
                      'Chat Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    icon: Image.asset(
                      'assets/icons/chatt.png',
                      width: 25,
                      height: 25,
                      color: Color(0xFF19BF8A),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                  // SizedBox(width:6),
                  Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.black26,
                    //color: Color(0xFF0000000D),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
