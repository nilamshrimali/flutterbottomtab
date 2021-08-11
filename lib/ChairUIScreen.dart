import 'package:bottom_navigation_app/tabScreen.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';


class FurnitureUI extends StatelessWidget {
  const FurnitureUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeappbar(context),
      body: TabbarScreen(),

    );
  }
}


  
