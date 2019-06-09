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
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage('https://ws1.sinaimg.cn/large/006tNc79gy1g2yro70kwjj30f00qoq2u.jpg'),
        //     fit: BoxFit.cover
        //   )
        // ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: new Text('Schedule', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32.0)),
          ),
          body: Scrollbar(
            child: new SingleChildScrollView(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        margin: EdgeInsets.only(right: 16.0, top: 20.0, left: 20.0),
                        elevation: 3.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(12.0),
                              width: 100,
                              height: 100,
                              child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              child: new Text('Mira', textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(top: 20.0),
                        elevation: 3.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(12.0),
                              width: 100,
                              height: 100,
                              child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/images/cat24.jpg')),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              child: new Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16.0, top: 25.0, bottom: 16.0),
                        child: new Icon(Icons.date_range, color: Color(0xFF646465), size: 36.0,),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.0, top: 25.0, bottom: 16.0),
                        child: new Text('Schedule & Appoinment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF646465))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 110.0, top: 25.0, bottom: 16.0),
                        child: IconBottomSheet(),
                      )
                    ],
                  ),
                  CalenderScreen()
                ]
              )
            ),
          )
        ),
      )
    );
  }
}
