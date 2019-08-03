import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionalCard extends StatefulWidget {
  @override
  _OptionalCardState createState() => _OptionalCardState();
}

class _OptionalCardState extends State<OptionalCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: ScreenUtil().setWidth(200),
            height: ScreenUtil().setWidth(200),
            margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(64.0)),
            child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/mira.jpg')),
          )
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Name', style: TextStyle(fontSize: ScreenUtil().setSp(28)),)),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Min', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Species', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Cat', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text("Pet's birthday", style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('16 March 2019', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Weight', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('6 kg', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Current health issues', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)), child: Text('Allergies, Skin Allergies', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(child: Text('Hobbies', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            ),
            Expanded(
              flex: 1,
              child: Container(child: Text('Play with ball', style: TextStyle(fontSize: ScreenUtil().setSp(28)))),
            )
          ],
        ),
      ],
    );
  }
}