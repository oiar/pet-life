import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBottomSheet extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<IconBottomSheet> {
  final _formkey = GlobalKey<FormState>();
  
  final dateFormat = DateFormat("EEEE, MMM d");
  final timeFormat = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      icon: Icon(Icons.add_circle_outline, size: ScreenUtil().setWidth(64.0), color: Color(0xFF646465)),
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
              focusColor: Color(0xFFffc542),
              buttonColor: Color(0xFFffc542),
              splashColor: Color(0xFFffc542),
            ),
            child: Form(
              key: _formkey,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
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
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0), left: ScreenUtil().setWidth(110.0)),
                            child: Text('Add schedule', style: TextStyle(fontSize: ScreenUtil().setSp(48), fontWeight: FontWeight.bold))
                          )
                        )
                      ]
                    ),
                    Container(
                      padding: EdgeInsets.only(right: ScreenUtil().setWidth(72.0), left: ScreenUtil().setWidth(72.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                            child: Text('Date', style: TextStyle(fontSize: ScreenUtil().setSp(36.0))),
                          ),
                          Container(
                            height: ScreenUtil().setWidth(92),
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                            child: DateTimeField(
                              textAlign: TextAlign.center,
                              cursorColor: Color(0xFFffc542),
                              format: dateFormat,
                              onShowPicker: (context, currentValue) {
                                return showDatePicker(context: context, initialDate: currentValue ?? DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime(2100));
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.date_range, size: ScreenUtil().setWidth(64)),
                                filled: true,
                                fillColor: Color(0xFFfef7ec),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                                ),
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                            child: Text('Time', style: TextStyle(fontSize: ScreenUtil().setSp(36.0))),
                          ),
                          Container(
                            height: ScreenUtil().setWidth(92),
                            margin: EdgeInsets.only(top: 16.0),
                            child: DateTimeField(
                              textAlign: TextAlign.center,
                              cursorColor: Color(0xFFffc542),
                              format: timeFormat,
                              onShowPicker: (context, currentValue) async {
                                final time = await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()));
                                return DateTimeField.convert(time);
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.timer, size: ScreenUtil().setWidth(64)),
                                filled: true,
                                fillColor: Color(0xFFfef7ec),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                                )
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                            child: Text('Note', style: TextStyle(fontSize: ScreenUtil().setSp(36.0))),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                            child: TextFormField(
                              cursorColor: Color(0xFFffc542),
                              maxLines: 3,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFfef7ec),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            )
                          ),
                        ],
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
                      child: Container(
                        height: ScreenUtil().setWidth(92),
                        padding: EdgeInsets.only(left: ScreenUtil().setWidth(160.0), right: ScreenUtil().setWidth(160.0)),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                          onPressed: () {
                            if(_formkey.currentState.validate()) {
                              _formkey.currentState.save();
                            }
                          },
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
        ),
      },
    );
  }
  
}