import 'package:flutter/material.dart';

import 'chair.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  _TabbarScreenState createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length:4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: TabBar(
              isScrollable: true,
              
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 30),
              controller: _tabController,
              tabs: [
                Text(
                  "Chairs",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "Tables",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "Sofa",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "Benches",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                // Text(
                //   "Dianing",
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 10),
                // ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              ChairScreen(),
              Text("table"),
              Text("abcd"),
              Text("shdjhj"),
           // Text("daining"),
            //  Text("hhjh"),
            ]),
          ),
        ],
            ),
          
        
      
    );
  }
}
