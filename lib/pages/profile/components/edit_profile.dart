import 'dart:ui';

import 'package:flutter/material.dart';
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
          // elevation: 0.0,
          title: Text('Edit', style: TextStyle(fontSize: ScreenUtil().setSp(48)),),
          backgroundColor: Color(0xFFffc542),
        ),
        backgroundColor: Color(0xFFFEF1D4),
        body: SafeArea(
          top: false,
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        height: ScreenUtil().setWidth(600),
                        width: width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg'),
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
                            child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg'))
                            // child: (Container(
                            //   alignment: Alignment(-1.0, -0.6),
                            //   child: IconButton(
                            //     icon: Icon(Icons.navigate_before, color: Color(0xFFffc542), size: 40.0),
                            //     onPressed: () {
                            //       Navigator.pop(context);
                            //     },
                            //   )
                            // )),
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