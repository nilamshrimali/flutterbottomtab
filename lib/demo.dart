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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("120 Products",style: TextStyle(
                        color: Colors.black,
                        
                        fontSize: 11),),
                DropdownButton<String>(
                  items: [
                    DropdownMenuItem<String>(
                      value: "1",
                      child: Text("5 items",style: TextStyle(
                        
                        fontSize: 10),),
                    ),
                    DropdownMenuItem<String>(
                      value: "2",
                      child: Text("10 items",style: TextStyle(
                        
                        fontSize: 10),),
                    ),
                    DropdownMenuItem<String>(
                      value: "3",
                      child: Text("15 items",style: TextStyle(
                        
                        fontSize: 10),),
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
         Expanded(child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(16),  
            crossAxisSpacing: 15,  
            mainAxisSpacing: 20,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[  
              Card(
                child: Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('First', style: TextStyle(fontSize: 20)),  
                  color: Colors.white,  
                ),
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Second', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Third', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Four', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Six', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
            ]),
         )],
      ),
    );
  }
}
