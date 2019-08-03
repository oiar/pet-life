import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: choices.length,
        child: SafeArea(
          child: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: SliverAppBar(
                    bottom: new TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(left: ScreenUtil().setWidth(44.0), right: ScreenUtil().setWidth(44.0)),
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.white,
                      tabs: choices.map((Choice choice) {
                        return new Tab(
                          text: choice.title,
                          // icon: Icon(choice.icon, size: 32),
                        );
                      }).toList(),
                    ),
                    pinned: false,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Text('Service', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: ScreenUtil().setSp(72.0), fontFamily: 'PatuaOne')),
                  ),
                )
              ];
            },
            body: new TabBarView(
              children: <Widget>[
                SpaScreen(),
                HotelScreen(),
                FoodScreen(),
              ],
            ),
          )
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

