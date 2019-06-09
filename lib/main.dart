import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // title: 'Flutter bottomNavigationBar',
      home: new Container(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationWidget(),
        )
      ),
    );
  }
}
