import 'package:flutter/material.dart';
import 'package:flutter_app/pages/schedule/schedule.dart';
import 'package:flutter_app/pages/service/service.dart';
import 'bottom_navigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // theme: ThemeData(fontFamily: 'Signika'),
      home: BottomNavigation(),
    );
  }
}
