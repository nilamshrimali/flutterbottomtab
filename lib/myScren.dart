import 'package:flutter/material.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Chairs",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    // Container(
                    //   margin: EdgeInsets.symmetric(vertical: 3),
                    //   height: 3,
                    //   width: 22,
                    //   decoration: BoxDecoration(
                    //     color: Colors.black87,
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    // ),
                    Text(
                      "Tables",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Sofa",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Benches",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Dianing table",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("120 Products"),
                  DropdownButton<String>(
                    items: [
                      DropdownMenuItem<String>(
                        value: "1",
                        child: Text("5 items"),
                      ),
                      DropdownMenuItem<String>(
                        value: "2",
                        child: Text("10 items"),
                      ),
                      DropdownMenuItem<String>(
                        value: "3",
                        child: Text("15 items"),
                      ),
                    ],
                    onChanged: (_value) => {print(_value.toString())},
                    hint: Text(
                      "Popular",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                 
                ],

                
              ),
            ),
           
          ],
        ),
      
        ],
    );
    
  }
}
