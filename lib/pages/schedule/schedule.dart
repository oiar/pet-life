import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components/bottom_sheet.dart';
import 'components/calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFffc542),
        accentColor: Color(0xFFffc542)
      ),
      home: new Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: NestedScrollView(
              physics: BouncingScrollPhysics(),
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    title: Text('Schedule', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: ScreenUtil().setSp(72), fontFamily: 'PatuaOne')),
                  )
                ];
              },
              body: Scrollbar(
                child: new SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            margin: EdgeInsets.only(right: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(32.0)),
                            elevation: 3.0,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                                  width: ScreenUtil().setWidth(200),
                                  height: ScreenUtil().setWidth(200),
                                  child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)),
                                  child: new Text('Mira', textAlign: TextAlign.center, style: TextStyle(fontSize: ScreenUtil().setSp(32)))
                                )
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
                            elevation: 3.0,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                                  width: ScreenUtil().setWidth(200),
                                  height: ScreenUtil().setWidth(200),
                                  child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/images/cat24.jpg')),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)),
                                  child: new Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: ScreenUtil().setSp(32)))
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(50.0), bottom: ScreenUtil().setWidth(8.0)),
                                  child: new Icon(Icons.date_range, color: Color(0xFF646465), size: ScreenUtil().setWidth(72.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(50.0), bottom: ScreenUtil().setWidth(8.0)),
                                  child: new Text('Schedule & Appoinment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: ScreenUtil().setSp(36), color: Color(0xFF646465))),
                                )
                              ]
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil().setWidth(50.0), bottom: ScreenUtil().setWidth(8.0)),
                              child: IconBottomSheet(),
                            )
                          )
                        ],
                      ),
                      CalenderScreen()
                    ]
                  )
                ),
              )
            )
          )
        ),
      )
    );
  }
}
