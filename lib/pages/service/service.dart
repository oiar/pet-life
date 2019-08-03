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
        length: 3,
        child: SafeArea(
          child: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  floating: true,
                  bottom: PreferredSize(
                    preferredSize: Size(double.infinity, ScreenUtil().setWidth(250)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.0),
                          topRight: Radius.circular(14.0),
                          bottomLeft: Radius.circular(14.0),
                          bottomRight: Radius.circular(14.0)
                        )
                      ),
                      margin: EdgeInsets.all(ScreenUtil().setWidth(32.0)),
                      child: TabBar(
                        indicatorWeight: ScreenUtil().setWidth(10.0),
                        indicatorColor: Color(0xFFffc542),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: <Widget>[
                          Container(
                            height: ScreenUtil().setWidth(180),
                            child: Tab(
                              child: Align(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: ScreenUtil().setWidth(20.0), bottom: ScreenUtil().setWidth(16.0)),
                                      child: Image.asset('lib/assets/images/tab_spa.png', width: ScreenUtil().setWidth(130), height: ScreenUtil().setWidth(90))
                                    ),
                                    Text('Spa', style: TextStyle(fontSize: ScreenUtil().setWidth(28)))
                                  ]
                                ),
                                alignment: Alignment.center,
                              ),
                            )
                          ),
                          Container(
                            height: ScreenUtil().setWidth(180),
                            child: Tab(
                              child: Align(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: ScreenUtil().setWidth(20.0), bottom: ScreenUtil().setWidth(16.0)),
                                      child: Image.asset('lib/assets/images/tab_hotel.png', width: ScreenUtil().setWidth(130), height: ScreenUtil().setWidth(90),)
                                    ),
                                    Text('Hotel', style: TextStyle(fontSize: ScreenUtil().setWidth(28)))
                                  ]
                                ),
                                alignment: Alignment.center,
                              ),
                            )
                          ),
                          Container(
                            height: ScreenUtil().setWidth(180),
                            child: Tab(
                              child: Align(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: ScreenUtil().setWidth(20.0), bottom: ScreenUtil().setWidth(16.0)),
                                      child: Image.asset('lib/assets/images/tab_food.png', width: ScreenUtil().setWidth(130), height: ScreenUtil().setWidth(90))
                                    ),
                                    Text('Food', style: TextStyle(fontSize: ScreenUtil().setWidth(28)))
                                  ]
                                ),
                                alignment: Alignment.center,
                              ),
                            )
                          )
                        ],
                      )
                    )
                  ),
                  // pinned: true,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text('Service', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: ScreenUtil().setSp(72.0), fontFamily: 'PatuaOne')),
                ),
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

