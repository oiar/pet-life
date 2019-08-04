import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AddBottomSheet extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<AddBottomSheet> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add_circle_outline, color: Color(0xFF646465), size: ScreenUtil().setWidth(64.0)),
      onPressed: () => {
        showModalBottomSheet<String>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(14.0), topRight: Radius.circular(14.0)),
          ),
          context: context,
          builder: (BuildContext context) => Theme(
            data: ThemeData(
              primaryColor: Color(0xFFffc542),
              accentColor: Color(0xFFffc542),
              textSelectionColor: Color(0xFFffc542),
              focusColor: Color(0xFFffc542)
            ),
            child: Container(
              child: ListView(
                children: <Widget>[
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
                          child: FlatButton(
                            child: Icon(Icons.navigate_before, size: ScreenUtil().setWidth(72.0), color: Color(0xFFcfcfcf),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(180.0)),
                          child: Text('Add pet', style: TextStyle(fontSize: ScreenUtil().setSp(48), fontWeight: FontWeight.bold))
                        )
                      )
                    ]
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 1, 
                          child: Container(
                            child: Text('Name: ', style: TextStyle(fontSize: ScreenUtil().setSp(40.0)))
                          )
                        ),
                        Expanded(
                          flex: 4, 
                          child: Container(
                            margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0)),
                            child: TextFormField(
                              cursorColor: Color(0xFFffc542),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFfef7ec),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                                ),
                              ),
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0), top: ScreenUtil().setWidth(50.0)),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 1, 
                          child: Container(
                            child: Text('Avatar: ', style: TextStyle(fontSize: ScreenUtil().setSp(40.0))))),
                        Expanded(
                          flex: 4, 
                          child: Center(
                            child: GestureDetector(
                              onTap: getImage,
                              child: Container(
                                width: ScreenUtil().setWidth(200),
                                height: ScreenUtil().setWidth(200),
                                child: _image == null
                                      ? defaultImage
                                      : circleImage(_image)
                              ),
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(200.0)),
                    child: Container(
                      height: ScreenUtil().setWidth(92),
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(160.0), right: ScreenUtil().setWidth(160.0)),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        onPressed: () {},
                        color: Color(0xFFffc542),
                        child: Text('Add', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(40)),),
                      )
                    )
                  )
                ],
              ),
            )
          )
        ),
      },
    );
  }
  Widget defaultImage = Container(
    child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/mira.jpg')),
  );
  Widget circleImage(File image) {
    return Container(
      child: ClipOval(
        child: Image.file(
          image,
          fit: BoxFit.cover,
          height: ScreenUtil().setWidth(200),
          width: ScreenUtil().setWidth(200),
        ),
      )
    );
  }
}