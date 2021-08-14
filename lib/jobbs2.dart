import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        shadowColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF656565),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            "Popular",
            style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontFamily: 'Poppins-Medium,',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          mainAxisSpacing: 4,
        //crossAxisSpacing: 1,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Padding(
                  padding:
                   //const EdgeInsets.all(5)
                      const EdgeInsets.symmetric(horizontal:10, vertical: 4),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Color(0xFFEAEAEA).withOpacity(0.10),
                        width: 1,
                      ),
                    ),
                    color: Color(0xFFFFFFFF),
                  child: Container(
                    height: 175,width:190,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:63),
                          child: Image(
                            image: AssetImage('assets/icons/smith.png'),
                            width: 73,
                            height: 80,
                          ),
                        ),
                        SizedBox(
                          height:2,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left:2),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Michael Williams ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontFamily: 'Poppins-Medium'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Plumber",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Regular',
                                    color: Colors.black45),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  "assets/icons/day.png",
                                  //width: 55,
                                  //height: 40,
                                ),
                              ),
                            ],
                          ),
                        
                      ],
                    ),),
                    
                  ),
                ),
                Positioned(
                  top: 14,
                  left: 122,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/stary.png",
                        width: 16,
                        height: 18,
                      ),
                      Text("4.5",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFFFAA08),
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 72,
                  child: Image.asset(
                    "assets/icons/blue.png",
                    color: Colors.blue,
                    //width: 27,
                    //height: 27,
                  ),
                ),
                Positioned(
                  top: 119,
                  right: 19,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Color(0xFFE6E6E6),
                      ),
                      iconSize:21,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
