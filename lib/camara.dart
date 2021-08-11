import 'dart:io';

import 'package:bottom_navigation_app/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CamaraScreen extends StatefulWidget {
  //const CamaraScreen({Key? key}) : super(key: key);

  @override
  _CamaraScreenState createState() => _CamaraScreenState();
}

class _CamaraScreenState extends State<CamaraScreen> {
  late File imgfile;

  void openCamera() async {
    var imgCamera = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      imgfile = File(imgCamera!.path);
    });
    //Navigator.of(context).pop();
  }

  void openGallery() async {
    var imgGallery = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      imgfile = File(imgGallery!.path);
    });
    //Navigator.of(context).pop();
  }

  void showPicker(context) {
    showBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
              child: Wrap(children: [
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text("Gallary"),
              onTap: () {
                openGallery();
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text("Camera"),
              onTap: () {
                openCamera();
                Navigator.of(context).pop();
              },
            ),
          ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {},
          iconSize: 30,
          icon: Icon(Icons.arrow_left),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 23,
              child: ClipOval(
                child: Image(
                    image: AssetImage("assets/icons/f2.png"), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Kelly West",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.80,
                        ),
                        padding: EdgeInsets.all(14),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEFF4),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Hi...dude! How are you? Even Dead Im the Hero,Love You 3000 Guys..",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "21:10pm",
                            style: TextStyle(color: Colors.black38),
                          ),
                          IconButton(
                            icon: new Image.asset('assets/icons/check.png'),
                            iconSize: 10,
                            color: Colors.green,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.80,
                        ),
                        padding: EdgeInsets.all(14),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF50BD9A),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Text(
                          "Nothing Specially Actually...How About This !",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "23:00pm",
                            style: TextStyle(color: Colors.black38),
                          ),
                          IconButton(
                            icon: new Image.asset('assets/icons/check.png'),
                            iconSize: 10,
                            color: Colors.green,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.80,
                        ),
                        padding: EdgeInsets.all(14),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEFF4),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Text(
                          "Hi..Its Beautifull ! Am i right.",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "23:40pm",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            //padding: EdgeInsets.symmetric(horizontal: 8),
            //height: 20,
            color: Colors.grey[200],
            child: Row(
              children: [
                IconButton(
                  icon: new Image.asset('assets/icons/gallery.png'),
                  iconSize: 31,
                  color: Colors.green,
                  onPressed: () {
                    showPicker(context);
                  },
                  //onPressed: () => ImageScreen()
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black54)),
                        hintText: 'Send Message',
                        fillColor: Colors.black26),
                  ),
                ),
                IconButton(
                  icon: new Image.asset('assets/icons/send.png'),
                  iconSize: 31,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void clickme() {
  print("clicked button");
}
