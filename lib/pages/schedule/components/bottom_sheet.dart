import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBottomSheet extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<IconBottomSheet> {
  DateTime date;
  final formats = {
    InputType.both: DateFormat("EEEE, MMM d"),
    InputType.date: DateFormat("EEEE, MMM d"),
    InputType.time: DateFormat("HH:mm"),
  };

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      icon: Icon(Icons.add_circle_outline, size: ScreenUtil().setWidth(64.0), color: Color(0xFF646465)),
      onPressed: () => {
        showModalBottomSheet<String>(
          context: context,
          builder: (BuildContext context) => Theme(
            data: ThemeData(
              primaryColor: Color(0xFFffc542),
              accentColor: Color(0xFFffc542),
              textSelectionColor: Color(0xFFffc542),
              focusColor: Color(0xFFffc542)
            ),
            child: Container(
              color: Colors.white,
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
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0), left: ScreenUtil().setWidth(108.0)),
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
                          child: Text('Date', style: TextStyle(fontSize: ScreenUtil().setSp(40))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                          child: DateTimePickerFormField(
                            textAlign: TextAlign.center,
                            cursorColor: Color(0xFFffc542),
                            editable: false,
                            onChanged: (dt) => setState(() => date = dt),
                            inputType: InputType.date,
                            format: formats[InputType.date],
                            decoration: InputDecoration(
                              icon: Icon(Icons.date_range, size: ScreenUtil().setWidth(64)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                borderRadius: BorderRadius.all(Radius.circular(50.0))
                              ),
                              filled: true,
                              fillColor: Color(0xFFfef7ec),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                          child: Text('Time', style: TextStyle(fontSize: ScreenUtil().setSp(40))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16.0),
                          child: DateTimePickerFormField(
                            editable: false,
                            textAlign: TextAlign.center,
                            cursorColor: Color(0xFFffc542),
                            controller: TextEditingController(),
                            onChanged: (dt) => setState(() => date = dt),
                            inputType: InputType.time,
                            format: formats[InputType.time],
                            decoration: InputDecoration(
                              icon: Icon(Icons.timer, size: ScreenUtil().setWidth(64)),
                              filled: true,
                              fillColor: Color(0xFFfef7ec),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                                borderRadius: BorderRadius.all(Radius.circular(50.0))
                              ),
                            ),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                          child: Text('Note', style: TextStyle(fontSize: ScreenUtil().setSp(40))),
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
                        onPressed: () {},
                        color: Color(0xFFffc542),
                        child: Text('Add', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(40)),),
                      )
                    )
                  )
                ],
              ),
            )
          ),
        ),
      },
    );
  }
  
}