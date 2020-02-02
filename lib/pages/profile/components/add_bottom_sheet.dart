import 'dart:io';
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class AddBottomSheet extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<AddBottomSheet> {
  DateTime date;
  final formats = {
    InputType.date: DateFormat('EEEE, MMM d'),
  };

  String dropdownValue = 'Cat';
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  DropdownButton _hintDown() => DropdownButton<String>(
    isExpanded: true,
    value: dropdownValue,
    onChanged: (String newValue) {
      setState(() {
        dropdownValue = newValue;
      });
    },
    items: <String>['Cat', 'Dog', 'Others']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
      .toList(),
  );

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add_circle_outline, color: Color(0xFF646465), size: ScreenUtil().setWidth(64.0)),
      onPressed: () => {
        showModalBottomSheet<String>(
          backgroundColor: Colors.white,
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
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
                          child: Text('Create profile for your pet', style: TextStyle(fontSize: ScreenUtil().setSp(48), fontWeight: FontWeight.bold))
                        )
                      )
                    ]
                  ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                    margin: EdgeInsets.only(left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0), top: ScreenUtil().setWidth(50.0)),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 1, 
                          child: Container(
                            child: Text('Picture: ', style: TextStyle(fontSize: ScreenUtil().setSp(36.0))))),
                        Expanded(
                          flex: 3, 
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
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0), top: ScreenUtil().setWidth(16.0), bottom: ScreenUtil().setWidth(32.0)),
                          child: Text("Pet's name: ", style: TextStyle(fontSize: ScreenUtil().setSp(36.0)))
                        ),
                        Container(
                          height: ScreenUtil().setWidth(92),
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                          child: TextFormField(
                            style: TextStyle(fontSize: ScreenUtil().setWidth(28)),
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0), top: ScreenUtil().setWidth(16.0), bottom: ScreenUtil().setWidth(32.0)),
                          child: Text("Species: ", style: TextStyle(fontSize: ScreenUtil().setSp(36.0)))
                        ),
                        Container(
                          padding: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), right: ScreenUtil().setWidth(32.0)),
                          height: ScreenUtil().setWidth(92),
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            color: Color(0xFFfef7ec),
                          ),
                          child: DropdownButtonHideUnderline(child: _hintDown()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0), top: ScreenUtil().setWidth(16.0), bottom: ScreenUtil().setWidth(32.0)),
                          child: Text("Pet's birthday: ", style: TextStyle(fontSize: ScreenUtil().setSp(36.0)))
                        ),
                        Container(
                          height: ScreenUtil().setWidth(92),
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                          child: DateTimePickerFormField(
                            textAlign: TextAlign.center,
                            // cursorColor: Color(0xFFffc542),
                            editable: false,
                            onChanged: (dt) => setState(() => date = dt),
                            inputType: InputType.date,
                            format: formats[InputType.date],
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                borderRadius: BorderRadius.all(Radius.circular(50.0))
                              ),
                              filled: true,
                              fillColor: Color(0xFFfef7ec),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0), top: ScreenUtil().setWidth(16.0), bottom: ScreenUtil().setWidth(32.0)),
                          child: Text("Weight: ", style: TextStyle(fontSize: ScreenUtil().setSp(36.0)))
                        ),
                        Container(
                          height: ScreenUtil().setWidth(92),
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                          child: TextFormField(
                            style: TextStyle(fontSize: ScreenUtil().setWidth(28)),
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0), top: ScreenUtil().setWidth(16.0), bottom: ScreenUtil().setWidth(32.0)),
                          child: Text("Current health issues: ", style: TextStyle(fontSize: ScreenUtil().setSp(36.0)))
                        ),
                        Container(
                          height: ScreenUtil().setWidth(92),
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                          child: TextFormField(
                            style: TextStyle(fontSize: ScreenUtil().setWidth(28)),
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(72.0), right: ScreenUtil().setWidth(72.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0), top: ScreenUtil().setWidth(16.0), bottom: ScreenUtil().setWidth(32.0)),
                          child: Text("Hobbies: ", style: TextStyle(fontSize: ScreenUtil().setSp(36.0)))
                        ),
                        Container(
                          height: ScreenUtil().setWidth(92),
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0), right: ScreenUtil().setWidth(16.0)),
                          child: TextFormField(
                            style: TextStyle(fontSize: ScreenUtil().setWidth(28)),
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(100.0)),
                    child: Container(
                      height: ScreenUtil().setWidth(92),
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(160.0), right: ScreenUtil().setWidth(160.0)),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        onPressed: () {},
                        color: Color(0xFFffc542),
                        child: Text('Add', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(40.0)),),
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