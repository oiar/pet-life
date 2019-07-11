import 'package:flutter/material.dart';
import 'pages/service/components/article.dart';
import 'pages/profile/profile.dart';
import 'pages/schedule/schedule.dart';
import 'pages/service/service.dart';

class BottomNavigation extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationWidget(),
      routes: {
        '/service': (BuildContext context) => ServiceScreen(),
        '/schedule': (BuildContext context) => ScheduleScreen(),
        '/profile': (BuildContext context) => ProfileScreen(),
        '/article': (BuildContext context) => ArticleScreen(),
      }
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  BottomNavigationWidgetState createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(ServiceScreen())
      ..add(ScheduleScreen())
      ..add(ProfileScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF1D4),
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.pets,
              color: Color(0xFFffc542),
            ),
            title: Text(
              'Service',
              style: TextStyle(color: Color(0xFFffc542)),
            )
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.schedule,
              color: Color(0xFFffc542),
            ),
            title: Text(
              'Schedule',
              style: TextStyle(color: Color(0xFFffc542)),
            )
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.portrait,
              color: Color(0xFFffc542),
            ),
            title: Text(
              'Profile',
              style: TextStyle(color: Color(0xFFffc542)),
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}