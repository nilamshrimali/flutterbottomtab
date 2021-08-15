import 'package:flutter/material.dart';

class demoScreen extends StatefulWidget {
  const demoScreen({Key? key}) : super(key: key);

  @override
  _demoScreenState createState() => _demoScreenState();
}

class _demoScreenState extends State<demoScreen> {
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
          ),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.fromLTRB(13, 7, 13, 10), //margin
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
                width: 172,
                height: 205,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Image.asset(
                        "assets/icons/smith.png",
                        width: 83,
                        height: 90,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 29, bottom: 126),
                      child: Image.asset(
                        "assets/icons/stary.png",
                        width: 14,
                        height: 14,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 126,
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
                  
                ),
              
            );
          },
        ),
      ),
    );
  }
}
