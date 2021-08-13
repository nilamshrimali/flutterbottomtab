import 'package:flutter/material.dart';

import 'jobbs2.dart';

class JobbsScreen extends StatelessWidget {
  const JobbsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue,
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top:17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Miranda West",
                          style: TextStyle(
                            //color: Color(0xFF000000),
                            fontSize: 16, fontFamily: 'Poppins',

                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            // CircleAvatar(
                            //   backgroundColor: Colors.white60,

                            Image.asset('assets/icons/location.png'),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "New York, 90001",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Image.asset('assets/icons/dd.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/icons/lady1.png"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Container(
                  margin: EdgeInsets.all(14),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                          color: Color(
                        0xFFEBEBEB,
                      ).withOpacity(0.36))),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Image.asset("assets/icons/search.png"),
                        hintText: "What service are you looking for?",
                        hintStyle: TextStyle(
                            color: Color(0xFF8A8A8F),
                            fontFamily: 'Poppins',
                            fontSize: 15)),
                  ),
                ),
              ),
              //recom
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              "Recommended For You",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PopularScreen()),
                    );
                            },
                            child: Text(
                              "See All",
                              style: TextStyle(
                                  color: Color(0xFF50BD9A),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Container(
                                height: 154,
                                width: 135,
                                child: Stack(
                                  children: [
                                    Card(
                                      elevation: 4,
                                      shadowColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                        side: BorderSide(
                                          color: Color(0xFFEAEAEA)
                                              .withOpacity(0.10),
                                          width: 1,
                                        ),
                                      ),
                                      color: Color(0xFFFFFFFF),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/icons/smith.png",
                                                  width: 42,
                                                  height: 40,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 29, bottom: 19),
                                                child: Image.asset(
                                                  "assets/icons/stary.png",
                                                  width: 14,
                                                  height: 14,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 19,
                                                ),
                                                child: Text("4.5",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xFFFFAA08),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text(
                                              "Michael williams",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins-Medium'),
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text(
                                              "Plumber",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins-Regular',
                                                  color: Colors.black45),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Image.asset(
                                              "assets/icons/day.png",
                                              width: 65,
                                              height: 26,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 28,
                                      left: 36,
                                      child: Image.asset(
                                        "assets/icons/blue.png",
                                        color: Colors.blue,
                                        width: 27,
                                        height: 27,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Container(
                              width: 135,
                              child: Stack(
                                children: [
                                  Card(
                                    elevation: 4,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      side: BorderSide(
                                        color:
                                            Color(0xFFEAEAEA).withOpacity(0.10),
                                        width: 1,
                                      ),
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/smith.png",
                                                width: 42,
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 29, bottom: 19),
                                              child: Image.asset(
                                                "assets/icons/stary.png",
                                                width: 14,
                                                height: 14,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: 19,
                                              ),
                                              child: Text("4.5",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFFFAA08),
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Michael williams",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Poppins-Medium'),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Plumber",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                fontFamily: 'Poppins-Regular',
                                                color: Colors.black45),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Image.asset(
                                            "assets/icons/day.png",
                                            width: 65,
                                            height: 26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 28,
                                    left: 36,
                                    child: Image.asset(
                                      "assets/icons/blue.png",
                                      color: Colors.blue,
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              //3cont
                              width: 135,
                              child: Stack(
                                children: [
                                  Card(
                                    elevation: 4,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      side: BorderSide(
                                        color:
                                            Color(0xFFEAEAEA).withOpacity(0.10),
                                        width: 1,
                                      ),
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/smith.png",
                                                width: 42,
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 29, bottom: 19),
                                              child: Image.asset(
                                                "assets/icons/stary.png",
                                                width: 14,
                                                height: 14,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: 19,
                                              ),
                                              child: Text("4.5",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFFFAA08),
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Michael williams",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Poppins-Medium'),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Plumber",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                fontFamily: 'Poppins-Regular',
                                                color: Colors.black45),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Image.asset(
                                            "assets/icons/day.png",
                                            width: 65,
                                            height: 26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 28,
                                    left: 36,
                                    child: Image.asset(
                                      "assets/icons/blue.png",
                                      color: Colors.blue,
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              "Popular",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                  color: Color(0xFF50BD9A),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Container(
                                height: 154,
                                width: 135,
                                child: Stack(
                                  children: [
                                    Card(
                                      elevation: 4,
                                      shadowColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                        side: BorderSide(
                                          color: Color(0xFFEAEAEA)
                                              .withOpacity(0.10),
                                          width: 1,
                                        ),
                                      ),
                                      color: Color(0xFFFFFFFF),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/icons/lady1.png",
                                                  width: 42,
                                                  height: 40,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 29, bottom: 19),
                                                child: Image.asset(
                                                  "assets/icons/stary.png",
                                                  width: 14,
                                                  height: 14,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 19,
                                                ),
                                                child: Text("4.5",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xFFFFAA08),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text(
                                              "Michael williams",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins-Medium'),
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text(
                                              "Plumber",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins-Regular',
                                                  color: Colors.black45),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Image.asset(
                                              "assets/icons/day.png",
                                              width: 65,
                                              height: 26,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 28,
                                      left: 36,
                                      child: Image.asset(
                                        "assets/icons/blue.png",
                                        color: Colors.blue,
                                        width: 27,
                                        height: 27,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Container(
                              width: 135,
                              child: Stack(
                                children: [
                                  Card(
                                    elevation: 4,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      side: BorderSide(
                                        color:
                                            Color(0xFFEAEAEA).withOpacity(0.10),
                                        width: 1,
                                      ),
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/lady1.png",
                                                width: 42,
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 29, bottom: 19),
                                              child: Image.asset(
                                                "assets/icons/stary.png",
                                                width: 14,
                                                height: 14,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: 19,
                                              ),
                                              child: Text("4.5",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFFFAA08),
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Michael williams",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Poppins-Medium'),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Plumber",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                fontFamily: 'Poppins-Regular',
                                                color: Colors.black45),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Image.asset(
                                            "assets/icons/day.png",
                                            width: 65,
                                            height: 26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 28,
                                    left: 36,
                                    child: Image.asset(
                                      "assets/icons/blue.png",
                                      color: Colors.blue,
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              //3cont
                              width: 135,
                              child: Stack(
                                children: [
                                  Card(
                                    elevation: 4,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      side: BorderSide(
                                        color:
                                            Color(0xFFEAEAEA).withOpacity(0.10),
                                        width: 1,
                                      ),
                                    ),
                                    color: Color(0xFFFFFFFF),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/lady1.png",
                                                width: 42,
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 29, bottom: 19),
                                              child: Image.asset(
                                                "assets/icons/stary.png",
                                                width: 14,
                                                height: 14,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: 19,
                                              ),
                                              child: Text("4.5",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFFFAA08),
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Michael williams",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Poppins-Medium'),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Plumber",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                fontFamily: 'Poppins-Regular',
                                                color: Colors.black45),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Image.asset(
                                            "assets/icons/day.png",
                                            width: 65,
                                            height: 26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 28,
                                    left: 36,
                                    child: Image.asset(
                                      "assets/icons/blue.png",
                                      color: Colors.blue,
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text(
                        "Recently Viewed",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins-SemiBold',
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: Color(0xFF50BD9A),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
