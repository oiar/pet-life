import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  @override
  Screen createState() => Screen();
}
class Screen extends State<EditProfile> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
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
                        child: _image == null
                              ? defaultBackImage
                              : backImage(_image),
                      ),
                      BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Center(
                          child: GestureDetector(
                            onTap: getImage,
                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil().setWidth(200.0)),
                              width: ScreenUtil().setWidth(240),
                              height: ScreenUtil().setWidth(240),
                              child: _image == null
                                    ? defaultImage
                                    : circleImage(_image)
                            )
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
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(0.2))),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(1.0), color: Color(0xFFffc542))),
                            labelText: 'Name',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        ),
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(0.2))),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(1.0), color: Color(0xFFffc542))),
                            labelText: 'Address',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        ),
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(0.2))),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(1.0), color: Color(0xFFffc542))),
                            labelText: 'Phone',
                            labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28))
                          ),
                        ),
                        TextField(
                          cursorColor: Color(0xFFffc542),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(0.2))),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: ScreenUtil().setWidth(1.0), color: Color(0xFFffc542))),
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
  Widget defaultImage = Stack(
    children: <Widget>[
      Align(
        alignment: Alignment.topLeft,
        child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/mira.jpg')),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(
          'lib/assets/images/edit.png',
          fit: BoxFit.contain,
          height: ScreenUtil().setWidth(90),
          width: ScreenUtil().setWidth(90),
        ),
      )
    ],
  );
  Widget defaultBackImage = Container(
    child: Image.asset('lib/assets/images/mira.jpg', 
      fit: BoxFit.cover
    )
  );
  Widget circleImage(File image) {
    return Stack(
      children: <Widget>[
        Container(
          child: ClipOval(
            child: Image.file(
              image,
              fit: BoxFit.cover,
              height: ScreenUtil().setWidth(240),
              width: ScreenUtil().setWidth(240),
            ),
          )
        )
      ],
    );
  }
  Widget backImage(File image) {
    return Container(
      child: Image.file(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}