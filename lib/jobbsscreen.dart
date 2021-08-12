import 'package:flutter/material.dart';

class JobbsScreen extends StatelessWidget {
  const JobbsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
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
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                margin: EdgeInsets.all(13),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended For You",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins-SemiBold',
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Color(0xFF50BD9A),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
