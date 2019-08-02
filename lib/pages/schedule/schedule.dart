import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components/bottom_sheet.dart';
import 'components/calendar_carousel.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    title: Text('Schedule', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32.0, fontFamily: 'PatuaOne')),
                  )
                ];
              },
              body: Scrollbar(
                child: new SingleChildScrollView(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            margin: EdgeInsets.only(right: 18.0, top: 8.0, left: 16.0),
                            elevation: 3.0,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(12.0),
                                  width: 80,
                                  height: 80,
                                  child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 16.0),
                                  child: new Text('Mira', textAlign: TextAlign.center, style: TextStyle(fontSize: 14))
                                )
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(top: 8.0),
                            elevation: 3.0,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(12.0),
                                  width: 80,
                                  height: 80,
                                  child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/images/cat24.jpg')),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 16.0),
                                  child: new Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: 14))
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
                                  margin: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 4.0),
                                  child: new Icon(Icons.date_range, color: Color(0xFF646465), size: 28.0,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 4.0),
                                  child: new Text('Schedule & Appoinment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF646465))),
                                )
                              ]
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 16.0, bottom: 4.0),
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
