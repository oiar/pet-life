import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  @override
  Screen createState() => Screen();
}
class Screen extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xFFffc542),
        accentColor: Color(0xFFffc542),
        textSelectionColor: Color(0xFFffc542),
        focusColor: Color(0xFFffc542)
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: ScreenUtil().setWidth(16.0)),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: ScreenUtil().setWidth(46.0),
                    color: Colors.white
                  ),
                )
              )
            )
          ],
          title: Text('Edit', style: TextStyle(fontSize: ScreenUtil().setSp(54), color: Colors.white)),
          backgroundColor: Color(0xFFffc542),
        ),
        backgroundColor: Color(0xFFFEF1D4),
        body: SafeArea(
          top: false,
          child: Scrollbar(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        height: ScreenUtil().setWidth(600),
                        width: width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/images/mira.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(200.0)),
                            width: ScreenUtil().setWidth(240),
                            height: ScreenUtil().setWidth(240),
                            child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/mira.jpg'))
                          )
                        ),
                      ),
                    ]
                  ),
                  Container(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(32.0)),
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
                    child: Column(
                      children: [
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.5, color: Color(0xFFffc542))),
                            labelText: 'Name',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        ),
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.5, color: Color(0xFFffc542))),
                            labelText: 'Address',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        ),
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.5, color: Color(0xFFffc542))),
                            labelText: 'Phone',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        ),
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0.5, color: Color(0xFFffc542))),
                            labelText: 'Name',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        )
                      ]
                    )
                  )
                ],
              ),
            )
          )
        ),
      )
    );
  }
}