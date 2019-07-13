import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: new SingleChildScrollView(
        // child: MapScreen()
      )
    );
  }
}