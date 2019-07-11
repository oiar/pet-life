import 'package:flutter/material.dart';
import 'components/food.dart';
import 'components/hotel.dart';
import 'components/spa.dart';

class ServiceScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: new Text('Service', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32.0)),
          bottom: new TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            isScrollable: true,
            tabs: choices.map((Choice choice) {
              return new Tab(
                text: choice.title,
                icon: new Icon(choice.icon, color: Colors.white, size: 32),
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            SpaScreen(),
            HotelScreen(),
            FoodScreen(),
          ],
        ),
      ), 
    );
  }
}

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Spa', icon:  Icons.weekend),
  const Choice(title: 'Hotel', icon: Icons.location_city),
  const Choice(title: 'Food', icon: Icons.fastfood)
];

